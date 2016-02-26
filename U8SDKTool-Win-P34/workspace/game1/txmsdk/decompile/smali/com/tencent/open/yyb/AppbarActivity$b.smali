.class Lcom/tencent/open/yyb/AppbarActivity$b;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/yyb/AppbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/open/yyb/AppbarActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/open/yyb/AppbarActivity$a;)V
    .registers 2

    .prologue
    .line 682
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 683
    iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$b;->a:Lcom/tencent/open/yyb/AppbarActivity$a;

    .line 684
    return-void
.end method


# virtual methods
.method protected a([B)V
    .registers 3

    .prologue
    .line 737
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$b;->a:Lcom/tencent/open/yyb/AppbarActivity$a;

    invoke-interface {v0, p1}, Lcom/tencent/open/yyb/AppbarActivity$a;->a([B)V

    .line 739
    return-void
.end method

.method protected varargs a([Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 688
    .line 690
    :try_start_1
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_9} :catch_40

    .line 697
    :try_start_9
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_46

    .line 702
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 704
    :try_start_14
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_19} :catch_4c

    .line 711
    :try_start_19
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_52

    move-result-object v2

    .line 717
    :try_start_1d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3e

    .line 718
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 719
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 721
    :goto_2e
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_58

    .line 722
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_39} :catch_3a

    goto :goto_2e

    .line 728
    :catch_3a
    move-exception v0

    .line 730
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3e
    move-object v0, v1

    .line 732
    :goto_3f
    return-object v0

    .line 691
    :catch_40
    move-exception v0

    .line 692
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    .line 693
    goto :goto_3f

    .line 698
    :catch_46
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 700
    goto :goto_3f

    .line 705
    :catch_4c
    move-exception v0

    .line 706
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    move-object v0, v1

    .line 707
    goto :goto_3f

    .line 712
    :catch_52
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 714
    goto :goto_3f

    .line 724
    :cond_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 725
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 726
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_61} :catch_3a

    move-result-object v0

    goto :goto_3f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 678
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$b;->a([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 678
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$b;->a([B)V

    return-void
.end method
