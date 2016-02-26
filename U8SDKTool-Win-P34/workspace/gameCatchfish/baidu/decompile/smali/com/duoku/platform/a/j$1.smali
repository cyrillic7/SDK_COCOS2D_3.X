.class Lcom/duoku/platform/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/a/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/a/j;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/a/j;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/a/j$1;->a:Lcom/duoku/platform/a/j;

    iput p2, p0, Lcom/duoku/platform/a/j$1;->b:I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/duoku/platform/a/j$1;->a:Lcom/duoku/platform/a/j;

    invoke-static {v0}, Lcom/duoku/platform/a/j;->a(Lcom/duoku/platform/a/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 99
    iget-object v1, p0, Lcom/duoku/platform/a/j$1;->a:Lcom/duoku/platform/a/j;

    invoke-static {v1}, Lcom/duoku/platform/a/j;->b(Lcom/duoku/platform/a/j;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/a/j$1;->b:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/h/k;

    invoke-virtual {v1}, Lcom/duoku/platform/h/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/duoku/platform/a/j$1;->a:Lcom/duoku/platform/a/j;

    invoke-static {v0}, Lcom/duoku/platform/a/j;->a(Lcom/duoku/platform/a/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    return-void
.end method
