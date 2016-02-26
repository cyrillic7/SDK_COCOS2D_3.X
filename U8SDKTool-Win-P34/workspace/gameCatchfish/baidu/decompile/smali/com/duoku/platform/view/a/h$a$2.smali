.class Lcom/duoku/platform/view/a/h$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/ui/b/c$a;


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
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$a$2;->a:Lcom/duoku/platform/view/a/h$a;

    iput-object p2, p0, Lcom/duoku/platform/view/a/h$a$2;->b:Landroid/app/Dialog;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a$2;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 463
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 464
    return-void
.end method
