.class public Lcom/baidu/paysdk/beans/h;
.super Lcom/baidu/wallet/core/beans/BaseBean;


# instance fields
.field private a:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

.field private c:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/baidu/paysdk/storage/PayDataCache$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/paysdk/beans/h;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/paysdk/beans/h;->k:Lcom/baidu/paysdk/storage/PayDataCache$a;

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/beans/h;->a:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/paysdk/beans/h;->d:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v0

    iget v1, p0, Lcom/baidu/paysdk/beans/h;->e:I

    iget-object v2, p0, Lcom/baidu/paysdk/beans/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->getActivitiesJsonParams(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->getActivitiesJsonParams()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private b()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    iget v1, p0, Lcom/baidu/paysdk/beans/h;->d:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v0

    iget v1, p0, Lcom/baidu/paysdk/beans/h;->e:I

    iget-object v2, p0, Lcom/baidu/paysdk/beans/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->getCouponJsonParams(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getCalcPayment()Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->getCouponJsonParams()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/base/datamodel/CardData$BondCard;ZZ)Lcom/baidu/paysdk/storage/PayDataCache$a;
    .registers 6

    iput-object p1, p0, Lcom/baidu/paysdk/beans/h;->g:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iput-boolean p2, p0, Lcom/baidu/paysdk/beans/h;->h:Z

    iput-boolean p3, p0, Lcom/baidu/paysdk/beans/h;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paysdk/beans/h;->j:Z

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/beans/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/storage/PayDataCache;->isCanUseBalance(Landroid/content/Context;)Lcom/baidu/paysdk/storage/PayDataCache$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/beans/h;->k:Lcom/baidu/paysdk/storage/PayDataCache$a;

    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->k:Lcom/baidu/paysdk/storage/PayDataCache$a;

    return-object v0
.end method

.method public a(IILjava/lang/String;)V
    .registers 4

    iput p1, p0, Lcom/baidu/paysdk/beans/h;->d:I

    iput p2, p0, Lcom/baidu/paysdk/beans/h;->e:I

    iput-object p3, p0, Lcom/baidu/paysdk/beans/h;->f:Ljava/lang/String;

    return-void
.end method

.method public execBean()V
    .registers 2

    const-class v0, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    invoke-super {p0, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->execBean(Ljava/lang/Class;)V

    return-void
.end method

.method public generateRequestParam()Ljava/util/List;
    .registers 7

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->a:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    if-nez v0, :cond_c

    move-object v0, v3

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "source_flag"

    const-string v4, "3"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "first_sp_id_tpl"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v4, v4, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "trans_need_to_pay"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/paysdk/storage/PayDataCache;->getInsideTransOrder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "seller_user_id"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/paysdk/storage/PayDataCache;->getSellerUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "total_amount"

    iget-object v4, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->a:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->hasDiscountOrCoupon()Z

    move-result v0

    if-eqz v0, :cond_1af

    invoke-direct {p0}, Lcom/baidu/paysdk/beans/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/paysdk/beans/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "coupon_list"

    invoke-direct {p0}, Lcom/baidu/paysdk/beans/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    move-object v1, v0

    :goto_81
    iget-boolean v0, p0, Lcom/baidu/paysdk/beans/h;->j:Z

    if-eqz v0, :cond_155

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getTransScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "score_trans_amount"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/paysdk/storage/PayDataCache;->getTransScore()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    iget-boolean v0, p0, Lcom/baidu/paysdk/beans/h;->i:Z

    if-eqz v0, :cond_c9

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getTransScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c9

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "score_pay_amount"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/paysdk/storage/PayDataCache;->getTransScore()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->k:Lcom/baidu/paysdk/storage/PayDataCache$a;

    iget-object v0, v0, Lcom/baidu/paysdk/storage/PayDataCache$a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_168

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "balance_amount"

    const-string v5, "0"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e1
    :goto_e1
    iget-boolean v0, p0, Lcom/baidu/paysdk/beans/h;->h:Z

    if-eqz v0, :cond_18a

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "need_calc_balance"

    const-string v5, "1"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f1
    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->g:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_155

    iget-boolean v0, p0, Lcom/baidu/paysdk/beans/h;->h:Z

    if-eqz v0, :cond_109

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/paysdk/beans/h;->c:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v4}, Lcom/baidu/paysdk/datamodel/PayRequest;->getOrderPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/paysdk/storage/PayDataCache;->isBalanceEnough(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_155

    :cond_109
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "easypay_channel"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/h;->g:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v5, v5, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_code:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/beans/h;->g:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->channel_activity_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_155

    :try_start_121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_198

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v0

    :goto_12d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    iget-object v5, p0, Lcom/baidu/paysdk/beans/h;->g:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v5, v5, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->channel_activity_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "selected"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_145
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_145} :catch_1a4

    :goto_145
    if-eqz v2, :cond_155

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_155

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_165

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "activity_list"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_165
    move-object v0, v3

    goto/16 :goto_b

    :cond_168
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "balance_amount"

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/paysdk/storage/PayDataCache;->getCanAmount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e1

    :cond_18a
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "need_calc_balance"

    const-string v5, "0"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f1

    :cond_198
    :try_start_198
    new-instance v0, Lorg/json/JSONArray;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1a2
    .catch Lorg/json/JSONException; {:try_start_198 .. :try_end_1a2} :catch_1a4

    move-object v2, v0

    goto :goto_12d

    :catch_1a4
    move-exception v0

    const-string v4, "CalcPaymentBean"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->errord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    :cond_1af
    move-object v1, v2

    goto/16 :goto_81
.end method

.method public getBeanId()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/paysdk/beans/h;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/DebugConfig;->getWalletHttpsHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/_u/cashdesk/calc_mkt_pay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
