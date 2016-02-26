.class public abstract Lcom/baidu/wallet/core/beans/BaseBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/beans/BaseBean$a;,
        Lcom/baidu/wallet/core/beans/BaseBean$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;

.field b:Lcom/baidu/wallet/core/restframework/a;

.field private c:Ljava/util/Timer;

.field private d:J

.field private e:Lcom/baidu/wallet/core/beans/BaseBean$b;

.field private f:Z

.field protected mContext:Landroid/content/Context;

.field protected mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->a:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->c:Ljava/util/Timer;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->d:J

    iput-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->e:Lcom/baidu/wallet/core/beans/BaseBean$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->f:Z

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/beans/BaseBean;)J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->generateRequestParam()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 4

    if-nez p2, :cond_7

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getAuthLevel()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->isLbsPayBean()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/beans/BaseBean;->b(Landroid/content/Context;Ljava/util/List;)V

    :cond_16
    return-object p2
.end method

.method static synthetic a(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->c:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/wallet/core/beans/BaseBean;Lcom/baidu/wallet/core/restframework/http/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/restframework/http/i;)V

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/restframework/http/i;)V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lcom/baidu/wallet/core/restframework/http/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->setBfbToken(Ljava/lang/String;)V

    :cond_16
    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getBfbToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "Set-Cookie"

    invoke-virtual {p1, v1}, Lcom/baidu/wallet/core/restframework/http/i;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_77

    move v1, v0

    :goto_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4e

    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4e

    const/4 v3, 0x0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4e
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_7c

    const-string v3, "token"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7c

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->setBfbToken(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_77} :catch_78

    :cond_77
    return-void

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f
.end method

.method static synthetic a(Lcom/baidu/wallet/core/beans/BaseBean;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->c:Ljava/util/Timer;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/util/List;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getEncode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gbk"

    if-ne v0, v3, :cond_ab

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "_ie"

    const-string v4, "gbk"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_16
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imei"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imsi"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mac"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ua"

    invoke-static {p1}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/baidu/paysdk/PayUtils;->getCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pay/SafePay;->getpw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "key"

    if-ne v0, v6, :cond_64

    :goto_78
    if-nez v1, :cond_84

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "key"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_84
    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/android/pay/SafePay;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "atbc"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_96
    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->isSign()Z

    move-result v0

    if-eqz v0, :cond_aa

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sign"

    invoke-static {p2}, Lcom/baidu/paysdk/PayUtils;->genAPIsig(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_aa
    return-void

    :cond_ab
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "_ie"

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_b9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "key"

    if-ne v0, v5, :cond_bd

    move v0, v1

    :goto_d2
    if-nez v0, :cond_de

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "key"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_de
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "atbc"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_eb
    move v0, v2

    goto :goto_d2

    :cond_ed
    move v1, v2

    goto :goto_78
.end method

.method static synthetic c(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/wallet/core/beans/BaseBean;)Lcom/baidu/wallet/core/beans/BaseBean$b;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->e:Lcom/baidu/wallet/core/beans/BaseBean$b;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/wallet/core/beans/BaseBean;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->f:Z

    return v0
.end method


# virtual methods
.method public destroyBean()V
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v0, ""

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "BeanTaskManager"

    invoke-static {v2}, Lcom/baidu/wallet/core/a/b;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/core/a/b;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/core/restframework/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/core/restframework/a;->a(Lcom/baidu/wallet/core/restframework/c/c;)V

    :cond_33
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->c:Ljava/util/Timer;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3c
    return-void
.end method

.method public abstract execBean()V
.end method

.method public execBean(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->execBean(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public execBean(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 12

    const-wide/16 v2, 0x0

    new-instance v8, Lcom/baidu/wallet/core/beans/g;

    invoke-direct {v8, p0, p1, p2}, Lcom/baidu/wallet/core/beans/g;-><init>(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    const/4 v2, -0x8

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v4, "ebpay_no_network"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    const-string v0, "BeanTaskManager"

    invoke-static {v0}, Lcom/baidu/wallet/core/a/b;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/a/b;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeanTask_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/baidu/wallet/core/a/b$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/baidu/wallet/core/a/b$a;-><init>(Lcom/baidu/wallet/core/a/b;JJZLjava/lang/String;Ljava/lang/Runnable;)V

    const-string v2, "BeanTask"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/wallet/core/a/b;->a(Lcom/baidu/wallet/core/a/b$a;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21
.end method

.method public abstract generateRequestParam()Ljava/util/List;
.end method

.method public getAuthLevel()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public abstract getBeanId()I
.end method

.method public getEncode()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getHttpMethod()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public isCompress()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isLbsPayBean()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSign()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setConnectionTimeOut(Lcom/baidu/wallet/core/beans/BaseBean$b;J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-lez v0, :cond_f

    const-wide/32 v0, 0xea60

    cmp-long v0, p2, v0

    if-gez v0, :cond_f

    iput-wide p2, p0, Lcom/baidu/wallet/core/beans/BaseBean;->d:J

    :cond_f
    iput-object p1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->e:Lcom/baidu/wallet/core/beans/BaseBean$b;

    return-void
.end method

.method public setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    return-void
.end method
