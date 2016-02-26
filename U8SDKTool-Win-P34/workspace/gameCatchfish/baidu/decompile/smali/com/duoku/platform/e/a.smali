.class public Lcom/duoku/platform/e/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/duoku/platform/e/a;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/duoku/platform/e/a;->a()V

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duoku/platform/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/duoku/platform/e/a;->a:Landroid/content/Context;

    const-string v2, "dk_custom_progress"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    iget-object v0, p0, Lcom/duoku/platform/e/a;->a:Landroid/content/Context;

    const-string v2, "dk_tv_loading_msg"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/e/a;->b:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/e/a;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0, v1}, Lcom/duoku/platform/e/a;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/duoku/platform/e/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Lcom/duoku/platform/e/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/duoku/platform/e/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/duoku/platform/e/a;->show()V

    .line 62
    return-void
.end method
