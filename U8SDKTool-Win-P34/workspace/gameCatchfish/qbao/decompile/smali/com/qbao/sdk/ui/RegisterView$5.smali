.class Lcom/qbao/sdk/ui/RegisterView$5;
.super Ljava/lang/Object;
.source "RegisterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RegisterView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ff:Lcom/qbao/sdk/ui/RegisterView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$5;->ff:Lcom/qbao/sdk/ui/RegisterView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 166
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$5;->ff:Lcom/qbao/sdk/ui/RegisterView;

    new-instance v1, Lcom/qbao/sdk/ui/AboutDetailView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/RegisterView$5;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    const-string v4, "\u94b1\u5b9d\u6e38\u620f\u6ce8\u518c\u534f\u8bae"

    invoke-direct {v1, v2, v3, v4}, Lcom/qbao/sdk/ui/AboutDetailView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/RegisterView;->d(Landroid/view/View;)V

    .line 167
    return-void
.end method
