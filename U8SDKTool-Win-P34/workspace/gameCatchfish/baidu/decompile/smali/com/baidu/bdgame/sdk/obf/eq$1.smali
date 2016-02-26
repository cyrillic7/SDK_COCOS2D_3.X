.class final Lcom/baidu/bdgame/sdk/obf/eq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eq;->b(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/bdgame/sdk/obf/eq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eq;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->e:Lcom/baidu/bdgame/sdk/obf/eq;

    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->a:I

    iput p3, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->b:I

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->e:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/eq;)V

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->e:Lcom/baidu/bdgame/sdk/obf/eq;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->a:I

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->b:I

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/eq$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/eq;IILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
