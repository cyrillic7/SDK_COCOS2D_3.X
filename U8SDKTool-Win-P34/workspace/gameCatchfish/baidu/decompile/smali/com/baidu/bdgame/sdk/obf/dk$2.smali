.class final Lcom/baidu/bdgame/sdk/obf/dk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dk;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dk;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dk;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dk$2;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 137
    if-eqz p2, :cond_e

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$2;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 144
    :goto_d
    return-void

    .line 141
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dk$2;->a:Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dk;->a(Lcom/baidu/bdgame/sdk/obf/dk;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_d
.end method
