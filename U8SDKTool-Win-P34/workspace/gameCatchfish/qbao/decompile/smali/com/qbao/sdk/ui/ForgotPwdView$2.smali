.class Lcom/qbao/sdk/ui/ForgotPwdView$2;
.super Ljava/lang/Object;
.source "ForgotPwdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView;->aA()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eF:Lcom/qbao/sdk/ui/ForgotPwdView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$2;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$2;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->finish()V

    .line 84
    return-void
.end method
