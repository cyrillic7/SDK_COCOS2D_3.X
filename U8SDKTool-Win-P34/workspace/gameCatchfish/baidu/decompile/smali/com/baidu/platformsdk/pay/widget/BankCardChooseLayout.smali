.class public Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->c()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->c()V

    .line 38
    return-void
.end method

.method private a(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;)V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 94
    :cond_c
    return-void

    .line 87
    :cond_d
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;

    .line 88
    if-ne v0, p1, :cond_26

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setSelected(Z)V

    goto :goto_13

    .line 91
    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setSelected(Z)V

    goto :goto_13
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;)V

    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->setOrientation(I)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ij;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 128
    :goto_e
    return-object v0

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;

    .line 124
    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 125
    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ij;

    goto :goto_e

    :cond_2e
    move-object v0, v1

    .line 128
    goto :goto_e
.end method

.method public a(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    if-gez p1, :cond_10

    .line 112
    :cond_f
    return-void

    :cond_10
    move v1, v2

    .line 104
    :goto_11
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 105
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;

    .line 106
    if-ne v1, p1, :cond_2b

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setSelected(Z)V

    .line 104
    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 109
    :cond_2b
    invoke-virtual {v0, v2}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setSelected(Z)V

    goto :goto_27
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 52
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->removeAllViews()V

    .line 53
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41000000

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move v1, v0

    .line 58
    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5c

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ij;

    .line 60
    new-instance v3, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;-><init>(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;Landroid/content/Context;)V

    .line 61
    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    .line 62
    invoke-virtual {v3, v1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setId(I)V

    .line 63
    if-nez v1, :cond_42

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setSelected(Z)V

    .line 66
    :cond_42
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$1;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$1;-><init>(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;)V

    invoke-virtual {v3, v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    if-nez v1, :cond_58

    .line 75
    invoke-virtual {p0, v3}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->addView(Landroid/view/View;)V

    .line 58
    :goto_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    .line 77
    :cond_58
    invoke-virtual {p0, v3, v2}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_54

    .line 81
    :cond_5c
    return-void
.end method

.method public b()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 136
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v1, v2

    .line 145
    :cond_e
    :goto_e
    return v1

    .line 139
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 140
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;

    .line 141
    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->isSelected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 139
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_2b
    move v1, v2

    .line 145
    goto :goto_e
.end method
