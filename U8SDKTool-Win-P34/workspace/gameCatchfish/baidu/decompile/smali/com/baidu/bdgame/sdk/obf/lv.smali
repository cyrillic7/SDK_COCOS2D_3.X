.class public abstract Lcom/baidu/bdgame/sdk/obf/lv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/lv$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/baidu/bdgame/sdk/obf/lv$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/lv;->a:I

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/lv;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 24
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/lv;->a:I

    .line 25
    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public a(Landroid/view/View;Lcom/baidu/bdgame/sdk/obf/lv$a;)V
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/lv;->b:Lcom/baidu/bdgame/sdk/obf/lv$a;

    .line 21
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lv;->b:Lcom/baidu/bdgame/sdk/obf/lv$a;

    if-eqz v0, :cond_b

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lv;->b:Lcom/baidu/bdgame/sdk/obf/lv$a;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/lv;->a:I

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lv$a;->a(I)V

    .line 41
    :cond_b
    return-void
.end method
