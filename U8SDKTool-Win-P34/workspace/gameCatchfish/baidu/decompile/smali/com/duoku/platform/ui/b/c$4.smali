.class Lcom/duoku/platform/ui/b/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b/c$4;->a:Lcom/duoku/platform/ui/b/c;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$4;->a:Lcom/duoku/platform/ui/b/c;

    iget-object v0, v0, Lcom/duoku/platform/ui/b/c;->e:Lcom/duoku/platform/ui/b/c$b;

    invoke-interface {v0}, Lcom/duoku/platform/ui/b/c$b;->a()V

    .line 287
    return-void
.end method
