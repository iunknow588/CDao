// SPDX-License-Identifier: Apache License 2.0

pragma solidity ^0.8.20;

import "./Division/FaiDivision.sol";

contract DaoInfo {
    uint256 public objValue;
    uint256 public CloseTime;
    bool public bClose; // 是否完成筹资，如果完成，则close为true

    infoFairDivision[] public users; // 所有用户的股份信息以及利益最终分配价格信息

    uint256 public totalWeight;

    FairDivision  division;

    bool private setInfoLock; // 设置锁

    constructor(uint256 _objValue) {
        objValue = _objValue;
        totalWeight = 0;
        bClose = false;
        setInfoLock = false;
    }

    /**
     ** @dev 防止函数被重入的修饰器。
     **/
    modifier nonSetInfo() {
        // 在函数执行前检查是否已经进入
        require(!setInfoLock, "Waiting for other users to set parameters");

        // 设置状态为已进入,上锁
        setInfoLock = true;

        // _; 是被修饰函数的占位符
        _;

        // 函数执行完毕后，恢复状态为未进入
        setInfoLock = false;
    }

    function setInfo(address addr, uint256 weight)
        public
        nonSetInfo
        returns (uint256 errInfo)
    {
        uint256 len = users.length;
        uint256 index = len;

        for (uint256 i = 0; i < len; i++) {
            if (addr == users[i].coOwner) {
                index = i;
                // no break;s
            }
        }

        if (index == len) {
            //新增加的用户信息；
            if (bClose) {
                // "不允许增加投资"
                return 1111;
            } else {
                // 可以增加
                infoFairDivision memory infoT;
                infoT.coOwner = addr; // 共同权利人
                infoT.weight = weight; //  比例权重

                if ((totalWeight + weight) < objValue) {
                    //尚未投资完成；
                    users.push(infoT);
                    totalWeight += weight;
                    return 0;
                } else if ((totalWeight + weight) == objValue) {
                    //正好投资完成；
                    users.push(infoT);
                    totalWeight += weight;
                    bClose = true;
                    CloseTime = block.timestamp;
                    return 0;
                } else {
                    // 投资额溢出，不能投资
                    return 11;
                }
            }
        } else {
            // 原先就存在的用户，需要修改信息
            infoFairDivision storage userInfo = users[index];
            uint256 oldWeight = userInfo.weight;
            if (oldWeight == weight) {
                // 时间不需要修改；保持第一次更新的时间
                return 0;
            } else if (oldWeight < weight) {
                // 属于增加投资，先判断是否可以增加投资
                if (bClose) {
                    // "不允许增加投资"
                    return 1111;
                }
                // 可以继续增加投资
                uint256 diff = weight - oldWeight;
                if ((totalWeight + diff) < objValue) {
                    //尚未投资完成；
                    users[index].weight = weight;
                    totalWeight += diff;
                    // bClose = false; 不需要修改
                    return 0;
                } else if ((totalWeight + diff) == objValue) {
                    //正好投资完成；
                    users[index].weight = weight;
                    totalWeight += diff;
                    bClose = true;
                    CloseTime = block.timestamp;
                    return 0;
                } else {
                    // 投资额溢出，不能投资
                    return 11;
                }
            } else {
                // 减少投资
                uint256 diff = oldWeight - weight;
                users[index].weight = weight;
                totalWeight -= diff;
                bClose = false;
                return 113;
            }
        }
    }

    function resetDivision(uint256 shareValue) public {
        //不关心是否close,这个属于应用层逻辑，
        // 关闭可以分配，没有关闭也可以分配，主要hi考虑到有人员担保后退出了
        division.Division(shareValue, objValue, users);
    }
}
