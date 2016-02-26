.class Lcom/atet/api/pay/ui/service/PayHelper$2;
.super Lcom/atet/api/pay/ui/service/IRemoteServiceCallback$Stub;


# instance fields
.field final synthetic this$0:Lcom/atet/api/pay/ui/service/l1lll1l1l1;


# direct methods
.method constructor <init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V
    .registers 2

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/PayHelper$2;->this$0:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-direct {p0}, Lcom/atet/api/pay/ui/service/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/PayHelper$2;->this$0:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method
