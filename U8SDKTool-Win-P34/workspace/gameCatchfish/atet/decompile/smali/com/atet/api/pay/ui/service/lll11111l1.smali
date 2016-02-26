.class final Lcom/atet/api/pay/ui/service/lll11111l1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;


# direct methods
.method constructor <init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V
    .registers 2

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/lll11111l1;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_d
    return v1

    :cond_e
    const/16 v4, 0x1d

    if-eq p2, v4, :cond_16

    const/16 v4, 0x60

    if-ne p2, v4, :cond_26

    :cond_16
    new-instance v4, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x42

    invoke-direct {v4, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v1, v3

    goto :goto_d

    :cond_26
    const/16 v1, 0x1e

    if-eq p2, v1, :cond_2e

    const/16 v1, 0x61

    if-ne p2, v1, :cond_43

    :cond_2e
    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_41

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_55

    :cond_41
    move v1, v3

    goto :goto_d

    :cond_43
    const/16 v1, 0x34

    if-eq p2, v1, :cond_53

    const/16 v1, 0x63

    if-eq p2, v1, :cond_53

    const/16 v1, 0x35

    if-eq p2, v1, :cond_53

    const/16 v1, 0x64

    if-ne p2, v1, :cond_56

    :cond_53
    move v1, v3

    goto :goto_d

    :catch_55
    move-exception v1

    :cond_56
    move v1, v2

    goto :goto_d
.end method
