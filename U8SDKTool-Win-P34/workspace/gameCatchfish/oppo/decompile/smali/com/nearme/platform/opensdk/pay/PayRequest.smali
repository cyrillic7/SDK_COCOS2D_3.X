.class public Lcom/nearme/platform/opensdk/pay/PayRequest;
.super Ljava/lang/Object;
.source "PayRequest.java"


# static fields
.field public static final ENV_RELEASE:I = 0x1

.field public static final ENV_TEST:I


# instance fields
.field public isAutoTest:Z

.field public mAmount:F

.field public mAppCode:Ljava/lang/String;

.field public mAppKey:Ljava/lang/String;

.field public mAppVersion:Ljava/lang/String;

.field public mAttach:Ljava/lang/String;

.field public mChannelId:Ljava/lang/String;

.field public mChargeLimit:F

.field public mCount:I

.field public mCurrencyName:Ljava/lang/String;

.field public mEnv:I

.field public mExchangeRatio:F

.field public mIsSinglePay:Z

.field public mNotifyUrl:Ljava/lang/String;

.field public mOrder:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPartnerId:Ljava/lang/String;

.field public mPartnerOrder:Ljava/lang/String;

.field public mProductDesc:Ljava/lang/String;

.field public mProductName:Ljava/lang/String;

.field public mRequestCode:I

.field public mSign:Ljava/lang/String;

.field public mSource:Ljava/lang/String;

.field public mToken:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChannelId:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppCode:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppKey:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    .line 95
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mExchangeRatio:F

    .line 100
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    .line 105
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAttach:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    .line 125
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCount:I

    .line 130
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    .line 145
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mEnv:I

    .line 149
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    .line 27
    return-void
.end method


# virtual methods
.method protected convert()Ljava/lang/String;
    .registers 9

    .prologue
    .line 161
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 163
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v4, :cond_17

    .line 171
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_17
    aget-object v0, v3, v1

    .line 164
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_2c

    .line 163
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 167
    :catch_2c
    move-exception v0

    .line 168
    const-class v5, Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "convert error. exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
