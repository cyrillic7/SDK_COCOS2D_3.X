.class public Lcom/baidu/wallet/core/beans/BaseBean$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/beans/BaseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/beans/BaseBean;


# direct methods
.method public constructor <init>(Lcom/baidu/wallet/core/beans/BaseBean;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/BaseBean$a;->a:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean$a;->a:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v0}, Lcom/baidu/wallet/core/beans/BaseBean;->e(Lcom/baidu/wallet/core/beans/BaseBean;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean$a;->a:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v0}, Lcom/baidu/wallet/core/beans/BaseBean;->d(Lcom/baidu/wallet/core/beans/BaseBean;)Lcom/baidu/wallet/core/beans/BaseBean$b;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean$a;->a:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-static {v0}, Lcom/baidu/wallet/core/beans/BaseBean;->d(Lcom/baidu/wallet/core/beans/BaseBean;)Lcom/baidu/wallet/core/beans/BaseBean$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/wallet/core/beans/BaseBean$b;->a()V

    :cond_19
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/BaseBean$a;->a:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BaseBean;->destroyBean()V

    :cond_1e
    return-void
.end method
