.class Lcom/baidu/wallet/core/beans/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/baidu/wallet/core/beans/BaseBean;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iput-object p2, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/baidu/wallet/core/beans/g;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    new-instance v3, Lcom/baidu/wallet/core/restframework/a;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v4, v4, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v5, "Apache-HttpClient/Android"

    invoke-direct {v3, v4, v5}, Lcom/baidu/wallet/core/restframework/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/baidu/wallet/core/restframework/a/c;

    invoke-direct {v3}, Lcom/baidu/wallet/core/restframework/a/c;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    invoke-virtual {v3, v2}, Lcom/baidu/wallet/core/restframework/a;->a(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/baidu/wallet/core/restframework/b/a;

    invoke-direct {v3}, Lcom/baidu/wallet/core/restframework/b/a;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/baidu/wallet/core/restframework/http/j;

    const-string v6, "text"

    const-string v7, "html"

    invoke-direct {v5, v6, v7}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/baidu/wallet/core/restframework/http/j;

    const-string v6, "application"

    const-string v7, "json"

    invoke-direct {v5, v6, v7}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/baidu/wallet/core/restframework/http/j;

    const-string v6, "application"

    const-string v7, "octet-stream"

    invoke-direct {v5, v6, v7}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lcom/baidu/wallet/core/restframework/b/a;->a(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    invoke-virtual {v3, v2}, Lcom/baidu/wallet/core/restframework/a;->b(Ljava/util/List;)V

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    new-instance v3, Lcom/baidu/wallet/core/beans/f;

    invoke-direct {v3, p0}, Lcom/baidu/wallet/core/beans/f;-><init>(Lcom/baidu/wallet/core/beans/g;)V

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/restframework/a;->a(Lcom/baidu/wallet/core/restframework/c/c;)V

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->b(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/baidu/wallet/core/beans/BaseBean$a;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-direct {v3, v4}, Lcom/baidu/wallet/core/beans/BaseBean$a;-><init>(Lcom/baidu/wallet/core/beans/BaseBean;)V

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_9f
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->getHttpMethod()I

    move-result v2

    if-nez v2, :cond_145

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v2, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->c(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->getEncode()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isString(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_142

    const-class v2, Lcom/baidu/wallet/core/beans/BeanResponseString;

    :goto_c7
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/baidu/wallet/core/restframework/a;->b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Lcom/baidu/wallet/core/restframework/http/h;

    move-result-object v2

    :goto_cb
    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;Z)Z

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->b(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_e2

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->b(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    :cond_e2
    if-eqz v2, :cond_30b

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v3, :cond_30b

    invoke-virtual {v2}, Lcom/baidu/wallet/core/restframework/http/h;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v4, v3}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;Lcom/baidu/wallet/core/restframework/http/i;)V

    invoke-virtual {v2}, Lcom/baidu/wallet/core/restframework/http/h;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/wallet/core/beans/BeanResponseBase;

    if-eqz v2, :cond_13d

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getServerReturnValue(Ljava/lang/Class;)I

    move-result v3

    if-eqz v3, :cond_1df

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseErrContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_176

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->b:Ljava/lang/Class;

    if-eqz v4, :cond_176

    invoke-static {}, Lcom/baidu/wallet/core/eventbus/EventBus;->getInstance()Lcom/baidu/wallet/core/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "ev_bean_execut_err_content"

    new-instance v7, Lcom/baidu/wallet/core/beans/e;

    iget-object v9, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v9}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v9

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseErrContent()Ljava/lang/String;

    move-result-object v2

    iget-object v12, p0, Lcom/baidu/wallet/core/beans/g;->b:Ljava/lang/Class;

    invoke-static {v11, v2, v12}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v9, v3, v10, v2}, Lcom/baidu/wallet/core/beans/e;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v5, v4, v6, v7}, Lcom/baidu/wallet/core/eventbus/EventBus$Event;-><init>(Lcom/baidu/wallet/core/eventbus/EventBus;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/baidu/wallet/core/eventbus/EventBus;->post(Lcom/baidu/wallet/core/eventbus/EventBus$Event;)V
    :try_end_13d
    .catch Lcom/baidu/wallet/core/restframework/RestRuntimeException; {:try_start_2 .. :try_end_13d} :catch_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_13d} :catch_280
    .catchall {:try_start_2 .. :try_end_13d} :catchall_2d7

    :cond_13d
    :goto_13d
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iput-object v8, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    :goto_141
    return-void

    :cond_142
    :try_start_142
    const-class v2, Lcom/baidu/wallet/core/beans/BeanResponseBase;

    goto :goto_c7

    :cond_145
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->getHttpMethod()I

    move-result v2

    if-ne v2, v9, :cond_369

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v2, Lcom/baidu/wallet/core/beans/BaseBean;->b:Lcom/baidu/wallet/core/restframework/a;

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->c(Lcom/baidu/wallet/core/beans/BaseBean;)Ljava/util/List;

    move-result-object v5

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BaseBean;->getEncode()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isString(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_173

    const-class v2, Lcom/baidu/wallet/core/beans/BeanResponseString;

    :goto_16d
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/baidu/wallet/core/restframework/a;->c(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Lcom/baidu/wallet/core/restframework/http/h;

    move-result-object v2

    goto/16 :goto_cb

    :cond_173
    const-class v2, Lcom/baidu/wallet/core/beans/BeanResponseBase;

    goto :goto_16d

    :cond_176
    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v4, v4, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v5}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v5

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v3, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V
    :try_end_187
    .catch Lcom/baidu/wallet/core/restframework/RestRuntimeException; {:try_start_142 .. :try_end_187} :catch_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_142 .. :try_end_187} :catch_280
    .catchall {:try_start_142 .. :try_end_187} :catchall_2d7

    goto :goto_13d

    :catch_188
    move-exception v2

    :try_start_189
    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v3, :cond_1c1

    const-class v3, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;->contains(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_32b

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    const/16 v5, -0xf

    iget-object v6, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v6, v6, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v7, "ebpay_no_network"

    invoke-static {v6, v7}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->d(Lcom/baidu/wallet/core/beans/BaseBean;)Lcom/baidu/wallet/core/beans/BaseBean$b;

    move-result-object v3

    if-eqz v3, :cond_1c1

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->d(Lcom/baidu/wallet/core/beans/BaseBean;)Lcom/baidu/wallet/core/beans/BaseBean$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/baidu/wallet/core/beans/BaseBean$b;->a()V

    :cond_1c1
    :goto_1c1
    const-string v3, "BeasBean"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execBean. exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d9
    .catchall {:try_start_189 .. :try_end_1d9} :catchall_2d7

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iput-object v8, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    goto/16 :goto_141

    :cond_1df
    :try_start_1df
    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f4

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v4, v4, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/wallet/base/datamodel/AccountManager;->setBfbToken(Ljava/lang/String;)V

    :cond_1f4
    const-string v3, "BeasBean"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execBean. ret ok. rsp class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    if-eqz v3, :cond_2f7

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    invoke-static {v3}, Lcom/baidu/wallet/core/utils/JsonUtils$DataType;->isString(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_232

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseConstent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_22c
    .catch Lcom/baidu/wallet/core/restframework/RestRuntimeException; {:try_start_1df .. :try_end_22c} :catch_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1df .. :try_end_22c} :catch_280
    .catchall {:try_start_1df .. :try_end_22c} :catchall_2d7

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iput-object v8, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    goto/16 :goto_141

    :cond_232
    :try_start_232
    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseConstent()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->a:Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/baidu/wallet/core/beans/BaseBean;->a(Lcom/baidu/wallet/core/beans/BaseBean;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v3, "BeasBean"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execBean. ret ok. real response = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2dd

    move-object v0, v4

    check-cast v0, Lcom/baidu/wallet/core/beans/IBeanResponse;

    move-object v3, v0

    invoke-interface {v3}, Lcom/baidu/wallet/core/beans/IBeanResponse;->checkResponseValidity()Z

    move-result v3

    if-eqz v3, :cond_2bd

    move-object v0, v4

    check-cast v0, Lcom/baidu/wallet/core/beans/IBeanResponse;

    move-object v3, v0

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v5, v5, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/baidu/wallet/core/beans/IBeanResponse;->storeResponse(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v5}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v5

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v4, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_27e
    .catch Lcom/baidu/wallet/core/restframework/RestRuntimeException; {:try_start_232 .. :try_end_27e} :catch_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_232 .. :try_end_27e} :catch_280
    .catchall {:try_start_232 .. :try_end_27e} :catchall_2d7

    goto/16 :goto_13d

    :catch_280
    move-exception v2

    :try_start_281
    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v3, :cond_29f

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v6, v6, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v7, "ebpay_resolve_error"

    invoke-static {v6, v7}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    :cond_29f
    const-string v3, "BeasBean"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execBean. exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b7
    .catchall {:try_start_281 .. :try_end_2b7} :catchall_2d7

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iput-object v8, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    goto/16 :goto_141

    :cond_2bd
    :try_start_2bd
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v3

    const/4 v4, -0x4

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v5, v5, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v6, "ebpay_resolve_error"

    invoke-static {v5, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V
    :try_end_2d5
    .catch Lcom/baidu/wallet/core/restframework/RestRuntimeException; {:try_start_2bd .. :try_end_2d5} :catch_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bd .. :try_end_2d5} :catch_280
    .catchall {:try_start_2bd .. :try_end_2d5} :catchall_2d7

    goto/16 :goto_13d

    :catchall_2d7
    move-exception v2

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iput-object v8, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    throw v2

    :cond_2dd
    :try_start_2dd
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v3

    const/4 v4, -0x4

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v5, v5, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v6, "ebpay_resolve_error"

    invoke-static {v5, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto/16 :goto_13d

    :cond_2f7
    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/baidu/wallet/core/beans/BeanResponseBase;->getRealResponseMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecSuccess(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_13d

    :cond_30b
    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    if-eqz v2, :cond_13d

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v3}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v3

    const/4 v4, -0x4

    iget-object v5, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v5, v5, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v6, "ebpay_resolve_error"

    invoke-static {v5, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V
    :try_end_329
    .catch Lcom/baidu/wallet/core/restframework/RestRuntimeException; {:try_start_2dd .. :try_end_329} :catch_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2dd .. :try_end_329} :catch_280
    .catchall {:try_start_2dd .. :try_end_329} :catchall_2d7

    goto/16 :goto_13d

    :cond_32b
    :try_start_32b
    const-class v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2, v3}, Lcom/baidu/wallet/core/restframework/RestRuntimeException;->contains(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_34e

    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    const/16 v5, -0x10

    iget-object v6, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v6, v6, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v7, "ebpay_ssl"

    invoke-static {v6, v7}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto/16 :goto_1c1

    :cond_34e
    iget-object v3, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v3, v3, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v4, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v4}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v4

    const/16 v5, -0xf

    iget-object v6, p0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v6, v6, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v7, "ebpay_resolve_error"

    invoke-static {v6, v7}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V
    :try_end_367
    .catchall {:try_start_32b .. :try_end_367} :catchall_2d7

    goto/16 :goto_1c1

    :cond_369
    move-object v2, v8

    goto/16 :goto_cb
.end method
