.class final Lcom/atet/api/pay/ui/service/l11l11l1l1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;


# direct methods
.method constructor <init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V
    .registers 2

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic l1l111lll1(Lcom/atet/api/pay/ui/service/l11l11l1l1;)Lcom/atet/api/pay/ui/service/l1lll1l1l1;
    .registers 2

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v2, "TV\u7248"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "\u624b\u673a\u7248"

    aput-object v2, v1, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_4a

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {v2}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x103007b

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_21
    const-string v2, "\u4e0b\u8f7d\u5b89\u88c5 \"ATET\u5b89\u5168\u652f\u4ed8\""

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/atet/api/pay/ui/service/l11111lll1;

    invoke-direct {v3, p0}, Lcom/atet/api/pay/ui/service/l11111lll1;-><init>(Lcom/atet/api/pay/ui/service/l11l11l1l1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, -0x1

    new-instance v3, Lcom/atet/api/pay/ui/service/l111ll1111;

    invoke-direct {v3, p0}, Lcom/atet/api/pay/ui/service/l111ll1111;-><init>(Lcom/atet/api/pay/ui/service/l11l11l1l1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_49
    return-void

    :cond_4a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1:Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    invoke-static {v2}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56

    goto :goto_21

    :catch_56
    move-exception v0

    goto :goto_49
.end method
