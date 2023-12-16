package com.example.bean;

import java.util.Date;

public class BoardVO {
	private int registerNum;
	private int cardLevel;
	private String cardName;
	private String cardType;
	private int cardAtk;
	private int cardDef;
	private boolean isMonsterCard;
	private boolean isEffectCard;




	public int getRegisterNum() { return registerNum; }
	public void setRegisterNum(int registerNum) {
		this.registerNum = registerNum;
	}
	public int getCardLevel() {
		return cardLevel;
	}

	public void setCardLevel(int cardLevel) {
		this.cardLevel = cardLevel;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public int getCardAtk() {
		return cardAtk;
	}
	public void setCardAtk(int cardAtk) {
		this.cardAtk = cardAtk;
	}

	public int getCardDef() {
		return cardDef;
	}
	public void setCardDef(int cardDef) {
		this.cardDef = cardDef;
	}

	public boolean getIsMonsterCard() { return isMonsterCard; }
	public void setIsMonsterCard(boolean isMonsterCard) {
		this.isMonsterCard = isMonsterCard;
	}
	public boolean getIsEffectCard() {
		return isEffectCard;
	}
	public void setIsEffectCard(boolean isEffectCard) {
		this.isEffectCard = isEffectCard;
	}
}
