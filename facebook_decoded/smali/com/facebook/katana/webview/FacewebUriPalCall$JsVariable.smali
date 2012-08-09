.class public Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;
.super Ljava/lang/Object;
.source "FacewebUriPalCall.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;->a:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/katana/webview/FacewebUriPalCall$JsVariable;->a:Ljava/lang/String;

    return-object v0
.end method
