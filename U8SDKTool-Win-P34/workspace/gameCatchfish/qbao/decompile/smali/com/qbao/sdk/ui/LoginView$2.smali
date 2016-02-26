.class Lcom/qbao/sdk/ui/LoginView$2;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/LoginView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eS:Lcom/qbao/sdk/ui/LoginView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/LoginView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/LoginView$2;->eS:Lcom/qbao/sdk/ui/LoginView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$2;->eS:Lcom/qbao/sdk/ui/LoginView;

    new-instance v1, Lcom/qbao/sdk/ui/AboutView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/LoginView$2;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qbao/sdk/ui/AboutView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/LoginView;->d(Landroid/view/View;)V

    .line 99
    return-void
.end method
