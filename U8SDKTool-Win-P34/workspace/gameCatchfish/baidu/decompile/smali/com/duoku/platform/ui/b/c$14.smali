.class Lcom/duoku/platform/ui/b/c$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;Ljava/util/List;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b/c;

.field private final synthetic b:Landroid/widget/ListView;

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b/c;Landroid/widget/ListView;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b/c$14;->a:Lcom/duoku/platform/ui/b/c;

    iput-object p2, p0, Lcom/duoku/platform/ui/b/c$14;->b:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/duoku/platform/ui/b/c$14;->c:Landroid/widget/TextView;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 929
    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$14;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$14;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 930
    return-void
.end method
