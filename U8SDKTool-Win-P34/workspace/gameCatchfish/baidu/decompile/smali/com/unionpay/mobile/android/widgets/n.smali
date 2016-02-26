.class final Lcom/unionpay/mobile/android/widgets/n;
.super Landroid/app/Dialog;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/m;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/m;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/n;->a:Lcom/unionpay/mobile/android/widgets/m;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method
