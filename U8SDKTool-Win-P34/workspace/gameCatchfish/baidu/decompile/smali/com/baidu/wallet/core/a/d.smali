.class Lcom/baidu/wallet/core/a/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/a/b;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/a/d;->a:Lcom/baidu/wallet/core/a/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/a/d;->a:Lcom/baidu/wallet/core/a/b;

    invoke-static {v0}, Lcom/baidu/wallet/core/a/b;->c(Lcom/baidu/wallet/core/a/b;)V

    return-void
.end method
