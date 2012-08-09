.class Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;
.super Ljava/lang/Object;
.source "SingleMethodRunner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/NameValuePair;Lcom/facebook/apache/http/NameValuePair;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-interface {p0}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-interface {p1}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    check-cast p1, Lcom/facebook/apache/http/NameValuePair;

    check-cast p2, Lcom/facebook/apache/http/NameValuePair;

    invoke-static {p1, p2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;->a(Lcom/facebook/apache/http/NameValuePair;Lcom/facebook/apache/http/NameValuePair;)I

    move-result v0

    return v0
.end method
