.class Lcom/qbao/sdk/ui/PayView$5;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aW()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fb:Lcom/qbao/sdk/ui/PayView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/PayView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$5;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$5;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->d(Lcom/qbao/sdk/ui/PayView;)V

    .line 243
    return-void
.end method
