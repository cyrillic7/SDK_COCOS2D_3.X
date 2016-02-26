.class public Lcom/baidu/bdgame/sdk/obf/ag;
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
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/baidu/bdgame/sdk/obf/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ag$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ag$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:I

    .line 48
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ah;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->d:Lcom/baidu/bdgame/sdk/obf/ah;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:I

    return v0
.end method

.method public d()Lcom/baidu/bdgame/sdk/obf/ah;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->d:Lcom/baidu/bdgame/sdk/obf/ah;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ag;->d:Lcom/baidu/bdgame/sdk/obf/ah;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
