.class public Lcom/baidu/paysdk/datamodel/BindFastRequest;
.super Lcom/baidu/wallet/core/beans/BeanRequestBase;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BIND_FROM_BIND:I = 0x1

.field public static final BIND_FROM_COMPLETION:I = 0x2

.field public static final BIND_FROM_FORGET_PASSSWD:I = 0x3

.field public static final BIND_FROM_ONLY_COMPLETION:I = 0x5

.field public static final BIND_FROM_PAY:I = 0x0

.field public static final BIND_IS_FIRST:Ljava/lang/String; = "bind_is_first"

.field public static final BOND_FROM_PAY:I = 0x6

.field public static final CARD_TYPE_CREDIT:I = 0x1

.field public static final CARD_TYPE_DEBIT:I = 0x2

.field public static final HAS_BINDED_CARD:Ljava/lang/String; = "has_binded_card"

.field private static final TAG:Ljava/lang/String; = "BindFastRequest"

.field private static final serialVersionUID:J = -0x16cc9adab716b30fL


# instance fields
.field public mBankCard:Ljava/lang/String;

.field public mBankCode:Ljava/lang/String;

.field private mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

.field public mBankNo:Ljava/lang/String;

.field private mBankType:I

.field public mBindFrom:I

.field public mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private mChannelNo:Ljava/lang/String;

.field public mCvv:Ljava/lang/String;

.field public mIdCard:Ljava/lang/String;

.field public mIsMobilePwd:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field private mNeedSms:I

.field public mPhone:Ljava/lang/String;

.field public mSmsVCode:Ljava/lang/String;

.field private mSubBankCode:Ljava/lang/String;

.field private mValidDate:Ljava/lang/String;

.field public needSetPwd:Z

.field private regEx:Ljava/lang/String;

.field public sms_length:Ljava/lang/String;

.field public sms_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanRequestBase;-><init>()V

    iput v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    iput-boolean v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->needSetPwd:Z

    return-void
.end method


# virtual methods
.method public checkRequestValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankCard:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public getBankType()I
    .registers 2

    iget v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankType:I

    return v0
.end method

.method public getBindFlag()Ljava/lang/String;
    .registers 4

    const-string v0, "0"

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    :cond_10
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "1"

    :cond_1c
    return-object v0
.end method

.method public getCardRequestType()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const-string v0, "1"

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "2"

    goto :goto_9

    :cond_13
    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    const-string v0, "3"

    goto :goto_9

    :cond_1d
    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    const-string v0, "4"

    goto :goto_9

    :cond_27
    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    const-string v0, "6"

    goto :goto_9

    :cond_31
    const-string v0, ""

    goto :goto_9
.end method

.method public getCardType()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->card_type:I

    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankType:I

    goto :goto_10
.end method

.method public getChannelNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mChannelNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mChannelNo:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->channel_no:Ljava/lang/String;

    goto :goto_a

    :cond_1c
    const-string v0, ""

    goto :goto_a
.end method

.method public getRegEx()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->regEx:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setBelongPaySdk()V

    const-string v0, "key_bind_card_request"

    return-object v0
.end method

.method public getSms_length()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->sms_length:Ljava/lang/String;

    return-object v0
.end method

.method public getSms_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->sms_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSubBankCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSubBankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getWithoutPay()Ljava/lang/String;
    .registers 3

    const-string v0, "0"

    invoke-virtual {p0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    :goto_9
    :pswitch_9
    return-object v0

    :pswitch_a
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "0"

    goto :goto_9

    :cond_17
    const-string v0, "1"

    goto :goto_9

    :pswitch_1a
    const-string v0, "1"

    goto :goto_9

    :pswitch_1d
    const-string v0, "0"

    goto :goto_9

    :pswitch_20
    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_27

    const-string v0, "0"

    goto :goto_9

    :cond_27
    const-string v0, "1"

    goto :goto_9

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_9
        :pswitch_1d
    .end packed-switch
.end method

.method public getmBankCard()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankCard:Ljava/lang/String;

    return-object v0
.end method

.method public getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    return-object v0
.end method

.method public getmBindFrom()I
    .registers 2

    iget v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    return v0
.end method

.method public getmBondCard()Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    return-object v0
.end method

.method public getmCvv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCvv:Ljava/lang/String;

    return-object v0
.end method

.method public getmIdCard()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIdCard:Ljava/lang/String;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getmSmsVCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSmsVCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmValidDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mValidDate:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedCheckSms()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mNeedSms:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRealPay()Z
    .registers 3

    iget v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setBankType(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankType:I

    return-void
.end method

.method public setChannelNo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mChannelNo:Ljava/lang/String;

    return-void
.end method

.method public setIs_mobile_pwd(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIsMobilePwd:Ljava/lang/String;

    return-void
.end method

.method public setRegEx(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->regEx:Ljava/lang/String;

    return-void
.end method

.method public setSms_length(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->sms_length:Ljava/lang/String;

    return-void
.end method

.method public setSms_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->sms_type:Ljava/lang/String;

    return-void
.end method

.method public setSubBankCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mSubBankCode:Ljava/lang/String;

    return-void
.end method

.method public setmBankCard(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankCard:Ljava/lang/String;

    return-void
.end method

.method public setmBankInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankInfo:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->bank_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->card_type:I

    iput v0, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankType:I

    :cond_14
    return-void
.end method

.method public setmCvv(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mCvv:Ljava/lang/String;

    return-void
.end method

.method public setmIdCard(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mIdCard:Ljava/lang/String;

    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mName:Ljava/lang/String;

    return-void
.end method

.method public setmNeedSms(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mNeedSms:I

    return-void
.end method

.method public setmPhone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mPhone:Ljava/lang/String;

    return-void
.end method

.method public setmValidDate(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_36
    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mValidDate:Ljava/lang/String;

    return-void
.end method
