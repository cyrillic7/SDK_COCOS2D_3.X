.class Lcom/baidu/wallet/core/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/baidu/wallet/core/a/b$a;

.field final synthetic c:Lcom/baidu/wallet/core/a/b;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/a/b;JLcom/baidu/wallet/core/a/b$a;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/wallet/core/a/e;->c:Lcom/baidu/wallet/core/a/b;

    iput-wide p2, p0, Lcom/baidu/wallet/core/a/e;->a:J

    iput-object p4, p0, Lcom/baidu/wallet/core/a/e;->b:Lcom/baidu/wallet/core/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/baidu/wallet/core/a/e;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_d

    :goto_5
    iget-object v0, p0, Lcom/baidu/wallet/core/a/e;->c:Lcom/baidu/wallet/core/a/b;

    iget-object v1, p0, Lcom/baidu/wallet/core/a/e;->b:Lcom/baidu/wallet/core/a/b$a;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/a/b;->a(Lcom/baidu/wallet/core/a/b;Lcom/baidu/wallet/core/a/b$a;)V

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
