.class final Lcom/baidu/wallet/core/eventbus/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

.field b:Lcom/baidu/wallet/core/eventbus/e;


# direct methods
.method private constructor <init>(Lcom/baidu/wallet/core/eventbus/EventBus$Event;Lcom/baidu/wallet/core/eventbus/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/wallet/core/eventbus/b;->a:Lcom/baidu/wallet/core/eventbus/EventBus$Event;

    iput-object p2, p0, Lcom/baidu/wallet/core/eventbus/b;->b:Lcom/baidu/wallet/core/eventbus/e;

    return-void
.end method

.method static a(Lcom/baidu/wallet/core/eventbus/e;Lcom/baidu/wallet/core/eventbus/EventBus$Event;)Lcom/baidu/wallet/core/eventbus/b;
    .registers 3

    new-instance v0, Lcom/baidu/wallet/core/eventbus/b;

    invoke-direct {v0, p1, p0}, Lcom/baidu/wallet/core/eventbus/b;-><init>(Lcom/baidu/wallet/core/eventbus/EventBus$Event;Lcom/baidu/wallet/core/eventbus/e;)V

    return-object v0
.end method
