.class Lcom/duoku/platform/view/a/h$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/ui/b/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/h$a;->a(ILcom/duoku/platform/h/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/h$a;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/h$a;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$a$3;->a:Lcom/duoku/platform/view/a/h$a;

    iput-object p2, p0, Lcom/duoku/platform/view/a/h$a$3;->b:Landroid/app/Dialog;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40800000

    .line 474
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a$3;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 476
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a$3;->a:Lcom/duoku/platform/view/a/h$a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h$a;->a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->e(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a$3;->a:Lcom/duoku/platform/view/a/h$a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h$a;->a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->e(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 478
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a$3;->a:Lcom/duoku/platform/view/a/h$a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h$a;->a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->e(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$a$3;->a:Lcom/duoku/platform/view/a/h$a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/h$a;->a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;

    move-result-object v1

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/h$a$3;->a:Lcom/duoku/platform/view/a/h$a;

    invoke-static {v2}, Lcom/duoku/platform/view/a/h$a;->a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 479
    return-void
.end method
