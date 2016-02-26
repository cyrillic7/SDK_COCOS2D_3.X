.class public abstract Lcom/duoku/platform/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected d:Lcom/duoku/platform/c/c;

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/content/Context;

.field protected g:Landroid/content/DialogInterface$OnCancelListener;

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/a;->h:Z

    .line 26
    invoke-virtual {p0}, Lcom/duoku/platform/view/a;->a()V

    .line 27
    iput-object p1, p0, Lcom/duoku/platform/view/a;->f:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/duoku/platform/view/a;->e()V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/duoku/platform/view/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/duoku/platform/view/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a;->f:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public abstract a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method protected abstract b()V
.end method

.method public d()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/duoku/platform/view/a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a$1;-><init>(Lcom/duoku/platform/view/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a;->g:Landroid/content/DialogInterface$OnCancelListener;

    .line 46
    return-void
.end method

.method public f()Lcom/duoku/platform/c/c;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duoku/platform/view/a;->d:Lcom/duoku/platform/c/c;

    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public h()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public i()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public j()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public k()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public l()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public m()Landroid/view/View;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/duoku/platform/view/a;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 90
    return-void
.end method
