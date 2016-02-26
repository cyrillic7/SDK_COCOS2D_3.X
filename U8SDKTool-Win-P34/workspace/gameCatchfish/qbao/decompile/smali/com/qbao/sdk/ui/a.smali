.class public Lcom/qbao/sdk/ui/a;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private eh:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 6

    .prologue
    .line 38
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/a;->requestWindowFeature(I)Z

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_27

    .line 41
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 46
    :goto_20
    invoke-virtual {p0, p3}, Lcom/qbao/sdk/ui/a;->setCancelable(Z)V

    .line 47
    invoke-direct {p0}, Lcom/qbao/sdk/ui/a;->aD()V

    .line 48
    return-void

    .line 43
    :cond_27
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_20
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 25
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/a;->requestWindowFeature(I)Z

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_27

    .line 28
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 33
    :goto_20
    invoke-virtual {p0, p2}, Lcom/qbao/sdk/ui/a;->setCancelable(Z)V

    .line 34
    invoke-direct {p0}, Lcom/qbao/sdk/ui/a;->aD()V

    .line 35
    return-void

    .line 30
    :cond_27
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 31
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_20
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/a;)Ljava/util/Stack;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lcom/qbao/sdk/ui/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qbao/sdk/ui/a;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/qbao/sdk/ui/a;->a(Landroid/view/View;)V

    .line 73
    invoke-virtual {v0}, Lcom/qbao/sdk/ui/a;->show()V

    .line 74
    return-void
.end method

.method private aD()V
    .registers 2

    .prologue
    .line 162
    new-instance v0, Lcom/qbao/sdk/ui/a$1;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/ui/a$1;-><init>(Lcom/qbao/sdk/ui/a;)V

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, p1}, Lcom/qbao/sdk/ui/a;->setContentView(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public aC()Ljava/util/Stack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    return-object v0
.end method

.method public ab(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 155
    :goto_a
    return v0

    .line 131
    :cond_b
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, v2

    .line 141
    :goto_19
    if-nez v0, :cond_5e

    move v0, v1

    .line 142
    goto :goto_a

    .line 132
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_19

    .line 146
    :cond_38
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 149
    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/a;->setContentView(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x1

    goto :goto_a

    .line 152
    :cond_59
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 145
    :cond_5e
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    .line 155
    goto :goto_a
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1}, Lcom/qbao/sdk/ui/a;->a(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 182
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->dismiss()V

    .line 190
    :cond_b
    :goto_b
    return-void

    .line 186
    :cond_c
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 187
    instance-of v1, v0, Lcom/qbao/sdk/ui/BaseView;

    if-eqz v1, :cond_b

    .line 188
    check-cast v0, Lcom/qbao/sdk/ui/BaseView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/BaseView;->aO()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    return-void
.end method

.method public pop()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_d

    .line 90
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/a;->dismiss()V

    .line 95
    :goto_c
    return-void

    .line 93
    :cond_d
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/qbao/sdk/ui/a;->eh:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/a;->setContentView(Landroid/view/View;)V

    goto :goto_c
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 65
    instance-of v0, p1, Lcom/qbao/sdk/ui/BaseView;

    if-eqz v0, :cond_c

    .line 66
    check-cast p1, Lcom/qbao/sdk/ui/BaseView;

    invoke-virtual {p1, p0}, Lcom/qbao/sdk/ui/BaseView;->setParentObj(Lcom/qbao/sdk/ui/a;)V

    .line 68
    :cond_c
    return-void
.end method
