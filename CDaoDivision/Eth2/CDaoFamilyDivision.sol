// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

// import "@openzeppelin/contracts/contracts/math/safemath.sol";
// import "@openzeppelin/contracts/math/SafeMath.sol";

library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

using SafeMath for uint256;

struct infoDivision {
    address coOwner; // 共同权利人
    uint256 valuation; //评估值;此处都是明文，加密属于应用逻辑
    uint256 resDivision; //分配结果值;
    bool onlyOwner; //最终权利所有人
    bool bReveal; //是否公开披露出价
    bytes32 blindedValue; //保密存储值
}

contract superFairDivision {
    // 此处不使用全局变量，是为了兼容map接口参数
    function supperDivision(infoDivision[] memory info)
        public
        payable
        returns (address)
    {
        // 低gas费用，可能会发生溢出问题；如果发生溢出，请使用supperDivision_estimate；
        uint256 len = info.length;

        //分配计划需要至少两个参与人。
        require(
            len >= 2,
            "The division requires a minimum of two participants."
        );

        uint256 maxValue = info[0].valuation;
        uint256 maxIndex = 0;
        uint256 sum = 0; // 累加值

        for (uint256 i = 0; i < len; i++) {
            // 累加所有评估值
            sum += info[i].valuation;
            // 寻找第一个是最大的估价值
            if (info[i].valuation > maxValue) {
                maxValue = info[i].valuation;
                maxIndex = i;
            }
        }

        uint256 diffValue = len * maxValue - sum;
        uint256 supperValue = diffValue / (len * len);

        uint256 needPayValue = 0;

        for (uint256 i = 0; i < len; i++) {
            //修改分配结果值：
            info[i].resDivision = supperValue + info[i].valuation / len;
            info[i].onlyOwner = false;
            needPayValue += info[i].resDivision;
        }

        // 出价最高的人是最终权利人，需要支付其他人的费用；
        //  (info[maxIndex].valuation*(len -1)) /len 是理论上的支付费用。
        info[maxIndex].resDivision =
            (info[maxIndex].valuation * (len - 1)) /
            len -
            supperValue;
        info[maxIndex].onlyOwner = true;

        if (needPayValue > info[maxIndex].resDivision) {
            //理论上，needPayValue 应该小于 info[maxIndex].resDivision
            if ((needPayValue - 2) < info[maxIndex].resDivision) {
                // 计算存在偏差,适当修正下,最多不超过1个；
                info[maxIndex].resDivision = needPayValue;
            } else {
                // 计算出现错误，需要进行逻辑检查
                require(false, "needPayValue >  resDivision");
            }
        } else {
            if ((needPayValue + 2 * len) < info[maxIndex].resDivision) {
                // 适当修正下数据
                info[maxIndex].resDivision = needPayValue + len;
            }
        }
        return (info[maxIndex].coOwner);
    }

    function supperDivision_estimate(infoDivision[] memory info)
        public
        pure
        returns (address)
    {
        // 进行一定的防溢出处理；
        return (info[0].coOwner);
    }
}

contract CDaoDivisionErrorinfo {
    mapping(uint256 => string) private errorMessage;

    ///  unint coOwnerNum ， 权利共有人的数量；
    constructor() {
        initErrorMessage();
    }

    function initErrorMessage() private {
        errorMessage[0] = "success";
        errorMessage[1] = "Valuation has not yet begun!";
        errorMessage[2] = "Valuation has ended!";
        errorMessage[3] = "Reveal has not yet begun!";
        errorMessage[4] = "Reveal has ended!";

        errorMessage[6] = "Reveal error!";

        errorMessage[11] = "error info  is not definite";
        errorMessage[12] = "error info  is not definite";
    }

    function getErrorInfo(uint256 errorNo) public view returns (string memory) {
        string memory errorInfo = errorMessage[errorNo];

        if (bytes(errorInfo).length == 0) {
            return "error info  is not definite";
        }
        return errorInfo;
    }
}

/// 该合约适应于小规模,成员之间相对熟悉的DAO系统使用，
/// 不需要设置时间限制，所有人参与之后，自动进入下一个状态；
/// 以服务器接收到的请求时间作为数组成员之间的排队顺序
/// 不参与也不设置对应的惩罚措施，但是应用层可以作出对应的权限处理。
contract CDaoFamilyDivision {
    infoDivision[] public info; // 权利人主观价格评估信息以及最终分配价格信息

    superFairDivision private division; // 分割合约
    CDaoDivisionErrorinfo private errorInfo; // 错误信息处理

    uint256 private coOwnerNum; // 权利人总数

    /// uint               private  curSetIndex;      //下一个设置预估价格的权利人索引
    ///  uint               private  curRevealIndex;   // 下一个公开披露价格的权利人索引

    uint256 private stateProcess;
    // 0:   初始状态，尚未开始估价
    // 1：  设置估价值；
    // 2：  披露价格阶段(所有人都出价完毕，自动进入披露本阶段)；
    // 3:   披露价格结束，分配阶段；
    //  4:   分配结束，数据仅供查询

    bool private setDivisionLock; // 设置价格锁
    bool private revealLock; // 披露价格函数锁

    event SetDivisionInfoEnd(); // 设置估价结束；可以公开披露报价了
    event RerealEnd(); // 披露价格结束；准备分割；
    event DivisionEnd(); // 分割结束，可以查询了；

    ///  unint coOwnerNum ， 权利共有人的数量；
    constructor(uint256 _coOwnerNum) {
        require(
            _coOwnerNum > 1,
            "The division requires a minimum of two participants."
        );

        coOwnerNum = _coOwnerNum;

        division = new superFairDivision();
        errorInfo = new CDaoDivisionErrorinfo();

        // info            = new infoDivision[](coOwnerNum);
        // curSetIndex     = 0;
        // curRevealIndex  = 0;

        setDivisionLock = false;
        revealLock = false;
    }

    /**
     ** @dev 防止函数被重入的修饰器。
     **/
    modifier nonSetDivision() {
        // 在函数执行前检查是否已经进入
        require(!setDivisionLock, "Waiting for other users to set parameters");

        // 设置状态为已进入,上锁
        setDivisionLock = true;

        // _; 是被修饰函数的占位符
        _;

        // 函数执行完毕后，恢复状态为未进入
        setDivisionLock = false;
    }

    /**
     ** @dev 防止函数被重入的修饰器。
     **/
    modifier nonReveal() {
        // 在函数执行前检查是否已经进入
        require(
            !revealLock,
            "Waiting for other users to reveal price parameters"
        );

        // 设置状态为已进入,上锁
        revealLock = true;

        // _; 是被修饰函数的占位符
        _;

        // 函数执行完毕后，恢复状态为未进入
        revealLock = false;
    }

    /// 期待每个权利人都设置一次，但是，如果多次设置，以最后一次设置为准；
    /// 可以通过 `blindedValue` = keccak256(valuation, limitValue, address) 设置一个加密评价值。
    /// 该函数同一时间只能被一个用户调用
    function setDivisionInfo(bytes32 blindedValue, uint256 limitValue)
        external
        nonSetDivision
        returns (uint256 errInfo)
    {
        if (stateProcess != 1) {
            // 不是评估值阶段
            if (stateProcess < 1) {
                return 1;
            } else {
                return 2;
            }
        }

        for (uint256 i = 0; i < info.length; i++) {
            if (info[i].coOwner == msg.sender) {
                //重复出价；覆盖上一次的数值
                info[i].valuation = limitValue; //初始化设置，如果没有正确公开披露出价，则以该数值为准
                //info[i].resDivision = 0; //分配结果值;
                //info[i].onlyOwner = false; //最终权利所有人
                info[i].blindedValue = blindedValue; //私密数值
                return 0; //退出设置
            }
        }

        // 没有找到，新增加一个
        if (info.length < coOwnerNum) {
            infoDivision memory infoT;
            infoT.coOwner == msg.sender;
            infoT.valuation = limitValue; //初始化设置，如果没有正确公开披露出价，则以该数值为准
            infoT.resDivision = 0; //分配结果值;
            infoT.onlyOwner = false; //最终权利所有人
            infoT.bReveal = false; //尚未公开披露价格
            infoT.blindedValue = blindedValue; //私密数值
            info.push(infoT);
        }

        // 根据插入数据之后的新状态判断
        if (info.length == coOwnerNum) {
            // 所有人都设置完毕，自动进入公开出价阶段
            stateProcess = 2;
            emit SetDivisionInfoEnd(); // 设置估价结束
        }

        return 0; //退出设置
    }

    /// 只有在出价披露阶段被正确披露，设置的价格才会生效
    /// 这是一个 "internal" 函数，
    ///  意味着它只能在本合约（或继承合约）内被调用。
    function revealDivisionInfo(uint256 valuation, uint256 limitValue)
        internal
        nonReveal
        returns (uint256 errInfo)
    {
        if (stateProcess != 2) {
            // 不是评估值阶段
            if (stateProcess < 2) {
                return 3;
            } else {
                return 4;
            }
        }

        bool bRevealAll = true;
        for (uint256 i = 0; i < info.length; i++) {
            if (!info[i].bReveal) {
                //  只要有一个未披露价格，则未披露完成；
                bRevealAll = false;
            }
            if (info[i].coOwner == msg.sender) {
                // 可以通过 `blindedValue` = keccak256(valuation, limitValue, address) 设置一个加密评价值。
                if (
                    info[i].blindedValue ==
                    keccak256(
                        abi.encodePacked(valuation, limitValue, msg.sender)
                    )
                ) {
                    //判断是否正确披露价格
                    info[i].valuation = valuation; //初始化设置，如果没有正确公开披露出价，则以该数值为准
                    info[i].resDivision = 0; //分配结果值;
                    info[i].onlyOwner = false; //最终权利所有人
                    // 注意，这里不需要退出处理；继续循环查看是否披露完毕
                } else {
                    // 没有正确披露价格，错误返回；
                    return 6;
                }
            }
        }

        if (bRevealAll) {
            // 所有人都披露价格完毕，自动进入分配阶段；
            stateProcess = 3;
            emit RerealEnd(); // 公开披露结束

            Division(); // 根据分配价格结果转移对应的数字资产；
        }

        return 0; //退出gongkai
    }

    /// 只有在出价披露阶段被正确披露，设置的价格才会生效已发送的以太币才会被退还。
    /// 如果与出价一起发送的以太币至少为 "value" 且 "fake" 不为真，则出价有效。
    function Division() private returns (uint256 errInfo) {
        // address ad = division.supperDivision(info);
        //  onlyOwner.transfer(highestBid);
        for (uint256 i = 0; i < info.length; i++) {
            if (!info[i].onlyOwner) {
                // 不是最终权利人的
                //  transfrom(payable(ad),info[i].coOwner,info[i].resDivision);
            }
        }

        stateProcess = 4; // 分配结束
        emit DivisionEnd(); //
        return 0;
    }

    // 返回一个结构体的函数
    function getDivisionInfo() public view returns (infoDivision[] memory) {
        return info;
    }
}

