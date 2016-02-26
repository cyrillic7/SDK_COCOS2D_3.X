.class Lcom/qbao/sdk/ui/RegisterView$2;
.super Ljava/lang/Object;
.source "RegisterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RegisterView;->aA()Landroid/widget/RelativeLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$2;->ff:Lcom/qbao/sdk/ui/RegisterView;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$2;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/RegisterView;->finish()V

    .line 87
    return-void
.end method
