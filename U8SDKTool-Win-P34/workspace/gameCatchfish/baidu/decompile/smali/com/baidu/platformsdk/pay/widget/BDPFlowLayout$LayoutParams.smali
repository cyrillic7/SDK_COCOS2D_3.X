.class public Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->a:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->b:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->c:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 108
    iput p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->c:I

    .line 109
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 103
    iput p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->a:I

    .line 104
    iput p2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->b:I

    .line 105
    return-void
.end method
