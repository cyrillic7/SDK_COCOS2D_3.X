.class public Lcom/duoku/platform/view/LoadingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/LoadingBar$a;,
        Lcom/duoku/platform/view/LoadingBar$b;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/view/LoadingBar$b;

.field private b:Lcom/duoku/platform/view/LoadingBar$a;

.field private c:[Landroid/widget/ImageView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/duoku/platform/view/LoadingBar;->d:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/duoku/platform/view/LoadingBar;->d()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/duoku/platform/view/LoadingBar;->d:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/duoku/platform/view/LoadingBar;->d()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/LoadingBar;)Lcom/duoku/platform/view/LoadingBar$a;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->b:Lcom/duoku/platform/view/LoadingBar$a;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    .line 95
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->d:Landroid/content/Context;

    const-string v2, "dk_loading_pot_1"

    .line 94
    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    if-nez p1, :cond_22

    .line 97
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 98
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->d:Landroid/content/Context;

    const-string v2, "dk_loading_pot_2"

    .line 97
    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    :goto_21
    return-void

    .line 100
    :cond_22
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 101
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->d:Landroid/content/Context;

    const-string v2, "dk_loading_pot_2"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_21
.end method

.method static synthetic a(Lcom/duoku/platform/view/LoadingBar;I)V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/LoadingBar;->a(I)V

    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/LoadingBar;->setOrientation(I)V

    .line 66
    invoke-virtual {p0}, Lcom/duoku/platform/view/LoadingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v1

    .line 67
    invoke-virtual {p0}, Lcom/duoku/platform/view/LoadingBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/duoku/platform/util/n;->a(Landroid/content/Context;I)I

    move-result v2

    .line 68
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    const/high16 v2, 0x3f800000

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    new-array v1, v4, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    .line 72
    :goto_27
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_30

    .line 76
    invoke-direct {p0}, Lcom/duoku/platform/view/LoadingBar;->e()V

    .line 77
    return-void

    .line 73
    :cond_30
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/duoku/platform/view/LoadingBar;->f()Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 74
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v3}, Lcom/duoku/platform/view/LoadingBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method private e()V
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/duoku/platform/view/LoadingBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/view/LoadingBar$a;-><init>(Lcom/duoku/platform/view/LoadingBar;Lcom/duoku/platform/view/LoadingBar$a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->b:Lcom/duoku/platform/view/LoadingBar$a;

    .line 85
    new-instance v0, Lcom/duoku/platform/view/LoadingBar$b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/LoadingBar$b;-><init>(Lcom/duoku/platform/view/LoadingBar;)V

    iput-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    .line 86
    return-void
.end method

.method private f()Landroid/widget/ImageView;
    .registers 4

    .prologue
    .line 109
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoku/platform/view/LoadingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lcom/duoku/platform/view/LoadingBar;->d:Landroid/content/Context;

    const-string v2, "dk_loading_pot_2"

    .line 110
    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a(Lcom/duoku/platform/view/LoadingBar$b;)I

    move-result v0

    if-nez v0, :cond_e

    .line 121
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar$b;->start()V

    .line 124
    :cond_d
    :goto_d
    return-void

    .line 122
    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a(Lcom/duoku/platform/view/LoadingBar$b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 123
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a()V

    goto :goto_d
.end method

.method public b()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a(Lcom/duoku/platform/view/LoadingBar$b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 141
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar$b;->b()V

    .line 146
    :cond_e
    :goto_e
    return-void

    .line 142
    :cond_f
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a(Lcom/duoku/platform/view/LoadingBar$b;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    goto :goto_e

    .line 144
    :cond_1b
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a(Lcom/duoku/platform/view/LoadingBar$b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 145
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-virtual {v0}, Lcom/duoku/platform/view/LoadingBar$b;->interrupt()V

    goto :goto_e
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar;->a:Lcom/duoku/platform/view/LoadingBar$b;

    invoke-static {v0}, Lcom/duoku/platform/view/LoadingBar$b;->a(Lcom/duoku/platform/view/LoadingBar$b;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
