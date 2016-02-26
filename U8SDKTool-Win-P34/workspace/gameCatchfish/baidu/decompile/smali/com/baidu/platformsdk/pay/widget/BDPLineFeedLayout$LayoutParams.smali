.class public Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;
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
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->a:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->b:I

    return v0
.end method

.method static synthetic c(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->c:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 101
    iput p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->c:I

    .line 102
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 96
    iput p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->a:I

    .line 97
    iput p2, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->b:I

    .line 98
    return-void
.end method
