.class Lcom/qbao/sdk/ui/AboutView$2;
.super Ljava/lang/Object;
.source "AboutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/AboutView;->b(ILjava/lang/String;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eb:Lcom/qbao/sdk/ui/AboutView;

.field private final synthetic ec:I

.field private final synthetic ed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/AboutView;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/AboutView$2;->eb:Lcom/qbao/sdk/ui/AboutView;

    iput p2, p0, Lcom/qbao/sdk/ui/AboutView$2;->ec:I

    iput-object p3, p0, Lcom/qbao/sdk/ui/AboutView$2;->ed:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$2;->eb:Lcom/qbao/sdk/ui/AboutView;

    new-instance v1, Lcom/qbao/sdk/ui/AboutDetailView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/AboutView$2;->eb:Lcom/qbao/sdk/ui/AboutView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/AboutView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/qbao/sdk/ui/AboutView$2;->ec:I

    iget-object v4, p0, Lcom/qbao/sdk/ui/AboutView$2;->ed:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/qbao/sdk/ui/AboutDetailView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/AboutView;->d(Landroid/view/View;)V

    .line 75
    return-void
.end method
