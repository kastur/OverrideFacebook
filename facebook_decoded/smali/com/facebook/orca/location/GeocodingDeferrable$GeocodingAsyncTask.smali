.class Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "GeocodingDeferrable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/facebook/orca/location/Coordinates;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/location/GeocodingDeferrable;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/location/GeocodingDeferrable;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/GeocodingDeferrable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/location/GeocodingDeferrable;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;-><init>(Lcom/facebook/orca/location/GeocodingDeferrable;)V

    return-void
.end method

.method private varargs a([Lcom/facebook/orca/location/Coordinates;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/orca/location/Coordinates;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    aget-object v3, p1, v0

    .line 110
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/GeocodingDeferrable;

    invoke-static {v1}, Lcom/facebook/orca/location/GeocodingDeferrable;->a(Lcom/facebook/orca/location/GeocodingDeferrable;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 114
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v1

    invoke-virtual {v3}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v3

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "orca:GeocodingDeferrable"

    const-string v2, "Failed to geocode"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/GeocodingDeferrable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/location/GeocodingDeferrable;->a(Lcom/facebook/orca/location/GeocodingDeferrable;Landroid/location/Address;)V

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 127
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/GeocodingDeferrable;

    invoke-static {v1, v0}, Lcom/facebook/orca/location/GeocodingDeferrable;->a(Lcom/facebook/orca/location/GeocodingDeferrable;Landroid/location/Address;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/GeocodingDeferrable;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v1, v0}, Lcom/facebook/orca/location/GeocodingDeferrable;->a(Lcom/facebook/orca/location/GeocodingDeferrable;Landroid/location/Address;)V

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 105
    check-cast p1, [Lcom/facebook/orca/location/Coordinates;

    invoke-direct {p0, p1}, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a([Lcom/facebook/orca/location/Coordinates;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/facebook/orca/location/GeocodingDeferrable$GeocodingAsyncTask;->a(Ljava/util/List;)V

    return-void
.end method
