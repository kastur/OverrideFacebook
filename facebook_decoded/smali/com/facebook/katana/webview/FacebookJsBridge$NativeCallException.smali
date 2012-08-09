.class public Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallException;
.super Ljava/lang/Exception;
.source "FacebookJsBridge.java"


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Ljava/lang/String;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallException;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallException;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallException;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/facebook/katana/webview/FacebookJsBridge$NativeCallException;->b:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "Unknown cause"

    goto :goto_0
.end method
