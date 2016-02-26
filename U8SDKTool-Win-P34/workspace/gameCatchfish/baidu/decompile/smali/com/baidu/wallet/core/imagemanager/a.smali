.class Lcom/baidu/wallet/core/imagemanager/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/wallet/core/imagemanager/h$a;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/baidu/wallet/core/imagemanager/h;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/imagemanager/h;Ljava/lang/String;Lcom/baidu/wallet/core/imagemanager/h$a;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/wallet/core/imagemanager/a;->d:Lcom/baidu/wallet/core/imagemanager/h;

    iput-object p2, p0, Lcom/baidu/wallet/core/imagemanager/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/wallet/core/imagemanager/a;->b:Lcom/baidu/wallet/core/imagemanager/h$a;

    iput-object p4, p0, Lcom/baidu/wallet/core/imagemanager/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/imagemanager/a;->d:Lcom/baidu/wallet/core/imagemanager/h;

    iget-object v1, p0, Lcom/baidu/wallet/core/imagemanager/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/a;->b:Lcom/baidu/wallet/core/imagemanager/h$a;

    iget-object v3, p0, Lcom/baidu/wallet/core/imagemanager/a;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/core/imagemanager/h;->a(Lcom/baidu/wallet/core/imagemanager/h;Ljava/lang/String;Lcom/baidu/wallet/core/imagemanager/h$a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/core/imagemanager/a;->d:Lcom/baidu/wallet/core/imagemanager/h;

    iget-object v1, p0, Lcom/baidu/wallet/core/imagemanager/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/a;->b:Lcom/baidu/wallet/core/imagemanager/h$a;

    iget-object v3, p0, Lcom/baidu/wallet/core/imagemanager/a;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/core/imagemanager/h;->b(Lcom/baidu/wallet/core/imagemanager/h;Ljava/lang/String;Lcom/baidu/wallet/core/imagemanager/h$a;Ljava/lang/Object;)V

    goto :goto_e
.end method
