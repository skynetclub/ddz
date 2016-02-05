#pragma once
#include <vector>
const int pkWidth = 71;//牌的宽
const int pkHeight = 96;//牌的高
const int pkJianJu = 20;//牌与牌之间的间距
//花色
enum HuaSe	
{
	HeiTao = 0,//黑桃
	HongTao,//红桃
	MeiHua,//梅花
	FangKuai,//方块
	Gui,//鬼
	HuaSeBM = 4     //花色背面
};
//牌号
enum PaiHao
{
	San = 0,Si,Wu,Liu,Qi,Ba,Jiu,Shi,ShiYi,ShiEr,ShiSan,Yi,Er,XiaoGui,DaGui,
	PaiHaoBM=2 //牌号背面
};
//标签
enum BiaoQian
{
	FenShu,
	NpcTwoBuChu,
	NpcOneBuChu
};
//斗地主共有13种牌型
/*
火箭：即双王（大王和小王），最大的牌。
炸弹：四张同数值牌（如四个 7 ）。
单牌：单个牌（如红桃 5 ）。
对牌：数值相同的两张牌（如梅花 4+ 方块 4 ）。
三张牌：数值相同的三张牌（如三个 J ）。
三带一：数值相同的三张牌 + 一张单牌或一对牌。例如： 333+6 或 444+99
单顺：五张或更多的连续单牌（如： 45678 或 78910JQK ）。不包括 2 点和双王。
双顺：三对或更多的连续对牌（如： 334455 、 7788991010JJ ）。不包括 2 点和双王。
三顺：二个或更多的连续三张牌（如： 333444 、 555666777888 ）。不包括 2 点和双王。
飞机带翅膀：三顺＋同数量的单牌（或同数量的对牌）。
如： 444555+79 或 333444555+7799JJ
四带二：四张牌＋两手牌。（注意：四带二不是炸弹）。
如： 5555 ＋ 3 ＋ 8 或 4444 ＋ 55 ＋ 77
*/
enum CARD_TYPE
{
	SINGLE_CARD = 1,		//单牌-
	DOUBLE_CARD,			//对子-
	THREE_CARD,				//3不带-
	BOMB_CARD,				//炸弹
	THREE_ONE_CARD,			//3带1-
	THREE_TWO_CARD,			//3带2-
	BOMB_TWO_CARD,			//四个带2张单牌
	BOMB_TWOOO_CARD,		//四个带2对
	CONNECT_CARD,			//连牌单顺-
	COMPANY_CARD,			//连队双顺-
	AIRCRAFT_CARD,			//飞机不带三顺-
	AIRCRAFT_SINGLE_CARD,	//飞机带单牌三顺带单牌-
	AIRCRAFT_DOBULE_CARD,	//飞机带对子三顺带对子-
	ERROR_CARD				//错误的牌型
} ;
struct CRAD_INDEX//分析飞机，四带用
{
	std::vector<int> single_index;//单张
	std::vector<int> duble_index;//双张
	std::vector<int> three_index;//三张
	std::vector<int> four_index;//四张
};
