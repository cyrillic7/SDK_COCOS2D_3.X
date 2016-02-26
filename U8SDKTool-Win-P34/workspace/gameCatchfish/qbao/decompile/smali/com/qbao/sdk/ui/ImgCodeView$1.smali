.class Lcom/qbao/sdk/ui/ImgCodeView$1;
.super Ljava/lang/Object;
.source "ImgCodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ImgCodeView;->aA()Landroid/widget/RelativeLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/ImgCodeView$1;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$1;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->finish()V

    .line 61
    return-void
.end method
