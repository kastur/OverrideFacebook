.class public final enum Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;
.super Ljava/lang/Enum;
.source "FacewebWebView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

.field public static final enum AUTHENTICATION_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

.field public static final enum NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 683
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    .line 684
    new-instance v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    const-string v1, "AUTHENTICATION_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->AUTHENTICATION_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    .line 682
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->NETWORK_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->AUTHENTICATION_ERROR:Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->$VALUES:[Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

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
    .line 682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;
    .locals 1
    .parameter

    .prologue
    .line 682
    const-class v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;
    .locals 1

    .prologue
    .line 682
    sget-object v0, Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->$VALUES:[Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    invoke-virtual {v0}, [Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/webview/FacewebWebView$FacewebErrorType;

    return-object v0
.end method
