.class public final Lcom/baidu/wallet/base/controllers/PayController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/controllers/PayController$a;
    }
.end annotation


# static fields
.field public static final KEY_CHECK_PWD_COMPLETE_CARD:I = 0x0

.field public static final KEY_CHECK_PWD_PAY:I = 0x1

.field private static a:Lcom/baidu/wallet/base/controllers/PayController;


# instance fields
.field private b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

.field private c:Lcom/baidu/wallet/base/controllers/PayController$a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_a

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/BaseActivity;Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_a

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivityWithoutAnim(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/baidu/wallet/base/controllers/PayController;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/controllers/PayController;->a:Lcom/baidu/wallet/base/controllers/PayController;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/base/controllers/PayController;

    invoke-direct {v0}, Lcom/baidu/wallet/base/controllers/PayController;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/controllers/PayController;->a:Lcom/baidu/wallet/base/controllers/PayController;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/base/controllers/PayController;->a:Lcom/baidu/wallet/base/controllers/PayController;

    return-object v0
.end method

.method public static priceToBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "0"

    :cond_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide v2, 0x3f847ae147ae147bL

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 8

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_4b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :goto_e
    const-string v0, "bind_is_first"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_bind_card_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_26

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    :cond_26
    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-class v0, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V

    if-eqz p3, :cond_44

    instance-of v0, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v0, :cond_44

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    :cond_44
    return-void

    :cond_45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6

    :cond_4b
    move-object v1, v0

    goto :goto_e
.end method

.method public bindFail(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->clearBindCallback()V

    return-void
.end method

.method public bindSuccess()V
    .registers 2

    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->getBindCallback()Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeSucceed()V

    :cond_d
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->clearBindCallback()V

    invoke-static {}, Lcom/baidu/wallet/core/BaseActivity;->exitEbpay()V

    return-void
.end method

.method public bondCardsPay(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_55

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :goto_11
    const-string v0, "bind_is_first"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_bind_card_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    :cond_2a
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x6

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    :goto_37
    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-class v0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V

    instance-of v0, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    goto :goto_4

    :cond_51
    const/4 v2, 0x2

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    goto :goto_37

    :cond_55
    move-object v1, v0

    goto :goto_11
.end method

.method public checkPwd(ILandroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/base/controllers/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/wallet/base/controllers/a;-><init>(Lcom/baidu/wallet/base/controllers/PayController;ILandroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, p2, v1}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    return-void
.end method

.method public completeCard(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p2, :cond_2

    iput-object p3, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    iput-object p2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public completeCardFail(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    invoke-interface {v0, p1}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeFailed(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    invoke-static {}, Lcom/baidu/wallet/core/BaseActivity;->exitEbpay()V

    return-void
.end method

.method public completeCardPay(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)V
    .registers 6

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    iput-object p2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public completeCardSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    invoke-interface {v0}, Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;->onChangeSucceed()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->b:Lcom/baidu/paysdk/api/BaiduPay$IBindCardCallback;

    invoke-static {}, Lcom/baidu/wallet/core/BaseActivity;->exitEbpay()V

    return-void
.end method

.method public confirmDiscountInfo(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/wallet/base/controllers/PayController$a;)V
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-object p2, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$a;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onDiscountConfirmed()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$a;

    invoke-interface {v0}, Lcom/baidu/wallet/base/controllers/PayController$a;->onConfirmed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/base/controllers/PayController;->c:Lcom/baidu/wallet/base/controllers/PayController$a;

    :cond_c
    return-void
.end method

.method public payFail(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;ILjava/lang/Boolean;)V
    .registers 12

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    const-string v2, ""

    const-string v1, ""

    if-eqz v0, :cond_77

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    :goto_17
    const-string v2, "timePay"

    invoke-static {p1, v2, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-eqz p4, :cond_60

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, "bindPayFail"

    :goto_29
    invoke-static {p1, v2, p3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "bindPayFailDetail"

    :goto_34
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->getNetName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->getGroupStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    if-eqz p2, :cond_64

    iput-boolean v6, p2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    :cond_64
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V

    const-class v0, Lcom/baidu/paysdk/ui/PayResultActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    :cond_71
    const-string v2, "onekeyPayFail"

    goto :goto_29

    :cond_74
    const-string v2, "onekeyPayFailDetail"

    goto :goto_34

    :cond_77
    move-object v0, v1

    move-object v1, v2

    goto :goto_17
.end method

.method public paySucess(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;Z)V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    const-string v1, ""

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_12
    const-string v1, "timePay"

    invoke-static {p1, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/utils/LogUtil;->mark()V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    if-eqz p3, :cond_37

    const-string v1, "bindPaySuccess"

    :goto_22
    invoke-static {p1, v1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2a

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;->isPaySuccess:Z

    :cond_2a
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/paysdk/storage/PayDataCache;->setPayReslutContent(Lcom/baidu/paysdk/ui/PayResultActivity$PayResultContent;)V

    const-class v0, Lcom/baidu/paysdk/ui/PayResultActivity;

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/BaseActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    :cond_37
    const-string v1, "onekeyPaySuccess"

    goto :goto_22

    :cond_3a
    move-object v0, v1

    goto :goto_12
.end method

.method public pwdPay(Lcom/baidu/wallet/core/BaseActivity;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_6
    const-class v1, Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->a(Lcom/baidu/wallet/core/BaseActivity;Landroid/os/Bundle;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    return-void

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public selectCompletCards(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_47

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :goto_11
    const-string v0, "bind_is_first"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_bind_card_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    :cond_2a
    const/4 v2, 0x2

    iput v2, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    const-class v0, Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/wallet/base/controllers/PayController;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)V

    instance-of v0, p1, Lcom/baidu/wallet/core/BaseActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/baidu/wallet/core/BaseActivity;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/BaseActivity;->finishWithoutAnim()V

    goto :goto_4

    :cond_47
    move-object v1, v0

    goto :goto_11
.end method
