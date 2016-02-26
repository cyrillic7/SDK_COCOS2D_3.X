.class final Lcom/meizu/filetransfer/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/meizu/filetransfer/g;->a:Ljava/lang/String;

    .line 348
    iput p2, p0, Lcom/meizu/filetransfer/g;->b:I

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/meizu/filetransfer/g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/filetransfer/g;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 361
    iget v0, p0, Lcom/meizu/filetransfer/g;->b:I

    iget-object v1, p0, Lcom/meizu/filetransfer/g;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/meizu/filetransfer/g;)Z
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/meizu/filetransfer/g;->a:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/filetransfer/g;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
