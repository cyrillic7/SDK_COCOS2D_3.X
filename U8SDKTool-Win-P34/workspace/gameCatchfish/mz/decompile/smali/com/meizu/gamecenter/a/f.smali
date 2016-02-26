.class final Lcom/meizu/gamecenter/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/a;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/f;->a:Lcom/meizu/gamecenter/a/a;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/f;)Lcom/meizu/gamecenter/a/a;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/gamecenter/a/f;->a:Lcom/meizu/gamecenter/a/a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/gamecenter/a/f;->a:Lcom/meizu/gamecenter/a/a;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/f;->a:Lcom/meizu/gamecenter/a/a;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/a;->a(Lcom/meizu/gamecenter/a/a;)Landroid/app/Activity;

    move-result-object v1

    .line 106
    const-string v2, "\u9b45\u65cf\u6e38\u620f\u6846\u67b6\u5b89\u88c5\u5931\u8d25"

    .line 107
    const-string v3, "\u60a8\u53d6\u6d88\u4e86\u5b89\u88c5"

    .line 108
    const-string v4, "\u786e\u5b9a"

    .line 109
    new-instance v5, Lcom/meizu/gamecenter/a/g;

    invoke-direct {v5, p0}, Lcom/meizu/gamecenter/a/g;-><init>(Lcom/meizu/gamecenter/a/f;)V

    .line 116
    new-instance v6, Lcom/meizu/gamecenter/a/h;

    invoke-direct {v6, p0}, Lcom/meizu/gamecenter/a/h;-><init>(Lcom/meizu/gamecenter/a/f;)V

    .line 123
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_26
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/a;->a(Lcom/meizu/gamecenter/a/a;Landroid/app/AlertDialog;)V

    .line 125
    return-void
.end method
