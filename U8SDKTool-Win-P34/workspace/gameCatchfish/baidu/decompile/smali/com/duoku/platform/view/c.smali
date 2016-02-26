.class public Lcom/duoku/platform/view/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 17
    const-string v0, "ad_dialog_style"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/c;->setCanceledOnTouchOutside(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/c;->setCanceledOnTouchOutside(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/duoku/platform/view/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/duoku/platform/view/c;->a:Landroid/view/View;

    .line 31
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method
