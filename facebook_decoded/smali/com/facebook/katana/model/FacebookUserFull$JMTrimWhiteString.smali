.class public Lcom/facebook/katana/model/FacebookUserFull$JMTrimWhiteString;
.super Lcom/facebook/katana/util/jsonmirror/types/JMString;
.source "FacebookUserFull.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMString;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/katana/model/FacebookUserFull;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 177
    :cond_0
    return-object v0
.end method
