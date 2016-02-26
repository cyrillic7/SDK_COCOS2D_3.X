.class public Lcom/baidu/paysdk/ui/WelcomeActivity;
.super Lcom/baidu/paysdk/ui/SelectPayActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private mTitleBack:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SelectPayActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/ui/WelcomeActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mTitleBack:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/paysdk/ui/WelcomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->loadData()V

    return-void
.end method

.method private checkDiscountInfo(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-nez v0, :cond_14

    :cond_10
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/storage/PayDataCache;->isUseDiscountOrCoupon(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/WelcomeActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/paysdk/ui/WelcomeActivity$3;-><init>(Lcom/baidu/paysdk/ui/WelcomeActivity;Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    invoke-virtual {v0, p0, v1}, Lcom/baidu/wallet/base/controllers/PayController;->confirmDiscountInfo(Lcom/baidu/wallet/core/BaseActivity;Lcom/baidu/wallet/base/controllers/PayController$a;)V

    goto :goto_13

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/ui/WelcomeActivity;->selectPayType(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    goto :goto_13
.end method

.method private initView()V
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_activity_welcome"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "title_back"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mTitleBack:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mTitleBack:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mTitleBack:Landroid/view/View;

    new-instance v1, Lcom/baidu/paysdk/ui/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/WelcomeActivity$1;-><init>(Lcom/baidu/paysdk/ui/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/api/BaiduPay;->getPayBack()Lcom/baidu/android/pay/PayCallBack;

    move-result-object v0

    if-eqz v0, :cond_3d

    if-eqz v0, :cond_50

    :try_start_37
    invoke-interface {v0}, Lcom/baidu/android/pay/PayCallBack;->isHideLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_3d
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "welcome_page"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v0

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_50
.end method

.method private loadData()V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->checkRequestValidity()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/baidu/paysdk/beans/c;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/paysdk/beans/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/c;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/c;->execBean()V

    :goto_2d
    return-void

    :cond_2e
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_2d
.end method

.method private startNLCashier(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V
    .registers 3

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-nez v0, :cond_a

    :cond_6
    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->bindCardPayNL()V

    goto :goto_9
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const v0, 0x186c3

    if-eq p2, v0, :cond_f

    const v0, 0x186c4

    if-eq p2, v0, :cond_f

    const/16 v0, 0x138b

    if-ne p2, v0, :cond_37

    :cond_f
    const-string v0, "cookie"

    invoke-virtual {p0, v0, v4}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bduss_cookie"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/ui/WelcomeActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/WelcomeActivity$2;-><init>(Lcom/baidu/paysdk/ui/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->login(Lcom/baidu/wallet/api/ILoginBackListener;)V

    :goto_36
    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->getNetName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/PayRequest;->mOrderNo:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->getGroupStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "createOrderError"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "createOrderError"

    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/baidu/paysdk/PayCallBackManager;->a(ILjava/lang/String;)V

    goto :goto_36
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "createOrder"

    iget-object v2, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->checkResponseValidity()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    :cond_19
    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->user:Lcom/baidu/wallet/base/datamodel/UserData$UserModel;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/UserData$UserModel;->decrypt()V

    :cond_22
    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->decrypt()V

    :cond_33
    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    if-eqz v1, :cond_53

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/UserData$SP;->goods_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v1

    const-string v2, "key_pay_request"

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v1

    check-cast v1, Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->sp:Lcom/baidu/wallet/base/datamodel/UserData$SP;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/UserData$SP;->goods_name:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/paysdk/datamodel/PayRequest;->mGoodName:Ljava/lang/String;

    :cond_53
    const-string v1, "pay_from_balance_charge"

    iget-object v2, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mPayFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    if-eqz v1, :cond_96

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    const-string v2, "amount"

    iget-object v3, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    const-string v2, "deposit_amount"

    iget-object v3, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->post_info:Ljava/util/Map;

    const-string v2, "count"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    const-string v0, "1"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/storage/PayDataCache;->getCashdeskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    check-cast p2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-direct {p0, p2}, Lcom/baidu/paysdk/ui/WelcomeActivity;->checkDiscountInfo(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    :goto_b2
    return-void

    :cond_b3
    check-cast p2, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-direct {p0, p2}, Lcom/baidu/paysdk/ui/WelcomeActivity;->startNLCashier(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    goto :goto_b2
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/paysdk/ui/SelectPayActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->initView()V

    invoke-static {}, Lcom/baidu/wallet/core/utils/PassUtil;->onCreate()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->loadData()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "timeAllPay"

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    :goto_1a
    invoke-static {v1, v2, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "paystart"

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->getNetName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    const-string v0, ""

    goto :goto_1a
.end method
