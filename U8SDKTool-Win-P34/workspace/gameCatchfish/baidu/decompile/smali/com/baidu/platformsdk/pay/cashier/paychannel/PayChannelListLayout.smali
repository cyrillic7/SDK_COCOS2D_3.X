.class public Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/dh;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    .line 27
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;I)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 135
    new-instance v0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 138
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    const/high16 v3, 0x40000000

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 139
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    if-eq p2, v4, :cond_52

    .line 141
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->e(I)Z

    move-result v2

    .line 142
    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->g(I)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v4, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(ILjava/lang/String;Z)V

    .line 144
    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(I)V

    .line 145
    if-eqz v2, :cond_45

    .line 146
    new-instance v2, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;

    invoke-direct {v2, p0, p2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;-><init>(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;I)V

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_45
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->f(I)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setTag(Ljava/lang/Object;)V

    .line 154
    :goto_4e
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-object v0

    .line 151
    :cond_52
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setVisibility(I)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setTag(Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method private a(Landroid/widget/LinearLayout;IZ)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 107
    new-instance v0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 110
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    const/high16 v3, 0x40000000

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 111
    if-eqz p3, :cond_55

    .line 112
    invoke-virtual {v1, v5, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    :goto_1e
    if-eq p2, v4, :cond_59

    .line 117
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->e(I)Z

    move-result v2

    .line 118
    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->g(I)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v4, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(ILjava/lang/String;Z)V

    .line 120
    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->a(I)V

    .line 121
    if-eqz v2, :cond_48

    .line 122
    new-instance v2, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;

    invoke-direct {v2, p0, p2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;-><init>(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;I)V

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_48
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/dh;->f(I)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_51
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-object v0

    .line 114
    :cond_55
    invoke-virtual {v1, v2, v2, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1e

    .line 127
    :cond_59
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setVisibility(I)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->setTag(Ljava/lang/Object;)V

    goto :goto_51
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->c:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;)Lcom/baidu/bdgame/sdk/obf/dh;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    return-object v0
.end method

.method private b()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    if-nez v0, :cond_8

    .line 84
    :cond_7
    return-void

    .line 54
    :cond_8
    invoke-virtual {p0, v10}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->setOrientation(I)V

    .line 55
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v6, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->b()I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    .line 58
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->a()I

    move-result v7

    .line 60
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    rem-int v0, v7, v0

    if-nez v0, :cond_4f

    .line 61
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    div-int v0, v7, v0

    :goto_29
    move v5, v2

    .line 65
    :goto_2a
    if-ge v5, v0, :cond_7

    .line 66
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    .line 69
    :goto_3c
    iget v3, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    if-ge v1, v3, :cond_64

    .line 70
    iget v3, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    mul-int/2addr v3, v5

    add-int/2addr v3, v1

    .line 71
    if-lt v3, v7, :cond_47

    move v3, v4

    .line 74
    :cond_47
    if-nez v1, :cond_56

    .line 75
    invoke-direct {p0, v8, v3, v10}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Landroid/widget/LinearLayout;IZ)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    .line 69
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 63
    :cond_4f
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    div-int v0, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 76
    :cond_56
    iget v9, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->d:I

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_60

    .line 77
    invoke-direct {p0, v8, v3, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Landroid/widget/LinearLayout;IZ)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    goto :goto_4c

    .line 79
    :cond_60
    invoke-direct {p0, v8, v3}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Landroid/widget/LinearLayout;I)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    goto :goto_4c

    .line 82
    :cond_64
    invoke-virtual {p0, v8, v6}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2a
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/dp;)Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 87
    move v2, v3

    :goto_2
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_34

    .line 88
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_18

    .line 87
    :cond_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_18
    move v4, v3

    .line 91
    :goto_19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_14

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 93
    instance-of v5, v1, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    if-nez v5, :cond_2b

    .line 91
    :cond_27
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_19

    .line 96
    :cond_2b
    check-cast v1, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;

    .line 97
    invoke-virtual {v1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelItem;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_27

    .line 102
    :goto_33
    return-object v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public a()V
    .registers 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->removeAllViews()V

    .line 47
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b()V

    .line 48
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dh;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a:Lcom/baidu/bdgame/sdk/obf/dh;

    .line 42
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b()V

    .line 43
    return-void
.end method
