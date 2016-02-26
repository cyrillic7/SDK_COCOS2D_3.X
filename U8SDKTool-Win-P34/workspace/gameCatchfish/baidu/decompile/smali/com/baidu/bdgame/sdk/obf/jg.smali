.class public Lcom/baidu/bdgame/sdk/obf/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jg$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jg$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/jg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/jg$1;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jg;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/ai;)Lcom/baidu/bdgame/sdk/obf/jg;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jg;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jg;->b(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jg;->c(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jg;->a(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jg;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jg;->a:Ljava/lang/String;

    .line 51
    :cond_c
    :goto_c
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 52
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_16
    return-object v0

    .line 45
    :cond_17
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jg;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jg;->c:Ljava/lang/String;

    goto :goto_c

    .line 47
    :cond_22
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jg;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jg;->b:Ljava/lang/String;

    goto :goto_c
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jg;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jg;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jg;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
