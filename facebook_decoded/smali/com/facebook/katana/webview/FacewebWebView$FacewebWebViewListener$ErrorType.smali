.class public final enum Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;
.super Ljava/lang/Enum;
.source "FacewebWebView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

.field public static final enum ERROR_TYPE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

.field public static final enum ERROR_TYPE_INVALID_HTML:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

.field public static final enum ERROR_TYPE_SSL:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    const-string v1, "ERROR_TYPE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    const-string v1, "ERROR_TYPE_SSL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_SSL:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    const-string v1, "ERROR_TYPE_INVALID_HTML"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_INVALID_HTML:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_SSL:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->ERROR_TYPE_INVALID_HTML:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->$VALUES:[Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 521
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 521
    const-class v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->$VALUES:[Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    invoke-virtual {v0}, [Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener$ErrorType;

    return-object v0
.end method
