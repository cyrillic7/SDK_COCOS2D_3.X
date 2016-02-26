.class Lcom/qbao/sdk/ui/ImgCodeView$2;
.super Ljava/lang/Object;
.source "ImgCodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ImgCodeView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eP:Lcom/qbao/sdk/ui/ImgCodeView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ImgCodeView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ImgCodeView$2;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$2;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ImgCodeView$2;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/widget/ImageView;)V

    .line 84
    return-void
.end method
