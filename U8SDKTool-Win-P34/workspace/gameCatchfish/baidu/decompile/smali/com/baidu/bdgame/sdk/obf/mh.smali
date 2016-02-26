.class public Lcom/baidu/bdgame/sdk/obf/mh;
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
            "Lcom/baidu/bdgame/sdk/obf/mh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mh$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/mh$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/mh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/mh$1;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mh;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mh;I)I
    .registers 2

    .prologue
    .line 11
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    return p1
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/ai;)Lcom/baidu/bdgame/sdk/obf/mh;
    .registers 3

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mh;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/mh;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mh;->b(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mh;->c(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mh;->a(I)V

    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mh;->a(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mh;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mh;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/mh;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 47
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    const-string v0, ""

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->c:Ljava/lang/String;

    .line 87
    :cond_c
    :goto_c
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 88
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_16
    return-object v0

    .line 81
    :cond_17
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->b:Ljava/lang/String;

    goto :goto_c

    .line 83
    :cond_22
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mh;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->a:Ljava/lang/String;

    goto :goto_c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
