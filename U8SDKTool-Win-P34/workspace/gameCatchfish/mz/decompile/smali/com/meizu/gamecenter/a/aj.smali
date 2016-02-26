.class final Lcom/meizu/gamecenter/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/aj;->a:Lcom/meizu/gamecenter/a/ai;

    iput-boolean p2, p0, Lcom/meizu/gamecenter/a/aj;->b:Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/gamecenter/a/aj;->a:Lcom/meizu/gamecenter/a/ai;

    iget-boolean v1, p0, Lcom/meizu/gamecenter/a/aj;->b:Z

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    .line 186
    return-void
.end method
