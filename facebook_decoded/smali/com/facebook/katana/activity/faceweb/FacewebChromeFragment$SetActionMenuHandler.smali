.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;
.super Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1146
    invoke-direct {p0, p2}, Lcom/facebook/katana/webview/FacebookWebView$NativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1147
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 1155
    const-string v0, "mark_unread"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const v0, 0x7f020140

    .line 1170
    :goto_0
    return v0

    .line 1157
    :cond_0
    const-string v0, "mark_spam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    const v0, 0x7f02013e

    goto :goto_0

    .line 1159
    :cond_1
    const-string v0, "archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    const v0, 0x7f02013a

    goto :goto_0

    .line 1161
    :cond_2
    const-string v0, "unarchive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    const v0, 0x7f02013f

    goto :goto_0

    .line 1163
    :cond_3
    const-string v0, "move"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1164
    const v0, 0x7f02013d

    goto :goto_0

    .line 1165
    :cond_4
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1166
    const v0, 0x7f02013b

    goto :goto_0

    .line 1167
    :cond_5
    const-string v0, "forward"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1168
    const v0, 0x7f02013c

    goto :goto_0

    .line 1170
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1175
    invoke-virtual {p1}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "actions"

    invoke-interface {p2, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;[Lorg/json/JSONObject;)[Lorg/json/JSONObject;

    .line 1180
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1181
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1182
    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->c(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)[Lorg/json/JSONObject;

    move-result-object v3

    aput-object v2, v3, v0

    .line 1184
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;->a(Ljava/lang/String;)I

    move-result v3

    .line 1186
    if-lez v3, :cond_0

    .line 1187
    const-string v4, "icon"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid JSON format"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1193
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;[Lorg/json/JSONObject;)[Lorg/json/JSONObject;

    .line 1195
    :cond_1
    return-void
.end method
