.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$5;,
        Lcom/android/providers/media/MediaProvider$STORAGE;,
        Lcom/android/providers/media/MediaProvider$ThumbData;,
        Lcom/android/providers/media/MediaProvider$Worker;,
        Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri; = null

.field private static final ALBUM_THUMB:I = 0x1

.field static final ALBUM_THUMB_FOLDER:Ljava/lang/String; = "Android/data/com.android.providers.media/albumthumbs"

.field private static final AUDIO_ALBUMART:I = 0x77

.field private static final AUDIO_ALBUMART_FILE_ID:I = 0x79

.field private static final AUDIO_ALBUMART_ID:I = 0x78

.field private static final AUDIO_ALBUMS:I = 0x74

.field private static final AUDIO_ALBUMS_ID:I = 0x75

.field private static final AUDIO_ARTISTS:I = 0x72

.field private static final AUDIO_ARTISTS_ID:I = 0x73

.field private static final AUDIO_ARTISTS_ID_ALBUMS:I = 0x76

.field private static final AUDIO_COLUMNSv100:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,volid,alive"

.field private static final AUDIO_COLUMNSv405:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,volid,alive"

.field private static final AUDIO_COLUMNSv99:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,volid,alive"

.field private static final AUDIO_GENRES:I = 0x6a

.field private static final AUDIO_GENRES_ALL_MEMBERS:I = 0x6d

.field private static final AUDIO_GENRES_ID:I = 0x6b

.field private static final AUDIO_GENRES_ID_MEMBERS:I = 0x6c

.field private static final AUDIO_MEDIA:I = 0x64

.field private static final AUDIO_MEDIA_ID:I = 0x65

.field private static final AUDIO_MEDIA_ID_GENRES:I = 0x66

.field private static final AUDIO_MEDIA_ID_GENRES_ID:I = 0x67

.field private static final AUDIO_MEDIA_ID_PLAYLISTS:I = 0x68

.field private static final AUDIO_MEDIA_ID_PLAYLISTS_ID:I = 0x69

.field private static final AUDIO_META_COLUMNS:Ljava/lang/String; = "_id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,volid,alive,is_podcast,bookmark"

.field private static final AUDIO_PLAYLISTS:I = 0x6e

.field private static final AUDIO_PLAYLISTS_ID:I = 0x6f

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS:I = 0x70

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS_ID:I = 0x71

.field private static final AUDIO_PLAYLISTS_MAP_OLD_ID:I = 0x4e21

.field private static final AUDIO_SEARCH_BASIC:I = 0x191

.field private static final AUDIO_SEARCH_FANCY:I = 0x192

.field private static final AUDIO_SEARCH_LEGACY:I = 0x190

.field private static final BULK_UPDATE:I = 0x320

.field public static final BULK_UPDATE_COLS_TAG:Ljava/lang/String; = "INPUT_COLS"

.field public static final BULK_UPDATE_HOST_PATH:Ljava/lang/String; = "content://media/bulk_update"

.field public static final BULK_UPDATE_UPDATED_PATH_TAG:Ljava/lang/String; = "UPDATE_PATH"

.field public static final BULK_UPDATE_WHERE_COL_TAG:Ljava/lang/String; = "WHERE_COL"

.field static final DATABASE_VERSION:I = 0x198

.field static final EXPSDCARD_VOLUME:Ljava/lang/String; = "exdsdcard"

.field private static final EXTERNAL_DATABASE_NAME:Ljava/lang/String; = "external.db"

.field static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field private static final FILES:I = 0x2bc

.field private static final FILES_ID:I = 0x2bd

.field private static final FS_ID:I = 0x258

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final HtcInkSupported:Z = false

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGES_HTCINK:I = 0x2711

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_THUMBNAILS:I = 0x3

.field private static final IMAGES_THUMBNAILS_ID:I = 0x4

.field private static final IMAGE_COLUMNS:Ljava/lang/String; = "_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,volid,alive,favorite,lock_screen,width,height"

.field private static final IMAGE_COLUMNSv407:Ljava/lang/String; = "_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,volid,alive,favorite,lock_screen"

.field private static final IMAGE_THUMB:I = 0x2

.field private static final INTERNAL_DATABASE_NAME:Ljava/lang/String; = "internal.db"

.field static final INTERNAL_VOLUME:Ljava/lang/String; = "internal"

.field private static IS_FOTA:Z = false

.field private static final LOCAL_LOGV:Z = false

.field protected static MAX_ALBUMTHUMBNAIL_FILE_SIZE:I = 0x0

.field private static final MAX_EXTERNAL_DATABASES:I = 0x3

.field private static final MEDIA_SCANNER:I = 0x1f4

.field private static final MEDIA_URI:Landroid/net/Uri; = null

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static final MTP_CONNECTED:I = 0x2c1

.field private static final MTP_OBJECTS:I = 0x2be

.field private static final MTP_OBJECTS_ID:I = 0x2bf

.field private static final MTP_OBJECT_REFERENCES:I = 0x2c0

.field private static final OBJECT_REFERENCES_QUERY:Ljava/lang/String; = "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

.field private static final OBSOLETE_DATABASE_DB:J = 0x134fd9000L

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PAUSE_SCAN:Ljava/lang/String; = "/data/data/com.android.providers.media/pause_scan"

.field private static final PLAYLIST_COLUMNS:Ljava/lang/String; = "_data,name,date_added,date_modified"

.field private static final PRUNE_THUMB_PATH:Ljava/lang/String; = "/data/data/com.android.providers.media/prune_thumb"

.field private static final READY_FLAG_PROJECTION:[Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final TEST_FLAG:Z = false

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field static final USB_VOLUME:Ljava/lang/String; = "exdusb"

.field private static final VERSION:I = 0x259

.field private static final VIDEO_COLUMNS:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,volid,alive,favorite,width,height"

.field private static final VIDEO_COLUMNSv407:Ljava/lang/String; = "_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,volid,alive,favorite"

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field private static final VIDEO_THUMBNAILS:I = 0xca

.field private static final VIDEO_THUMBNAILS_ID:I = 0xcb

.field private static final VOLID_ALUMS_ALL:I = 0x2713

.field public static final VOLID_COL_DATE:Ljava/lang/String; = "date_modified"

.field public static final VOLID_COL_VOLID:Ljava/lang/String; = "volid"

.field private static final VOLID_FILE:I = 0x2718

.field private static final VOLID_HTC:I = 0x2712

.field public static final VOLID_HTC_URI:Ljava/lang/String; = "content://media/external/volid/media"

.field private static final VOLID_MTP:I = 0x2714

.field private static final VOLUMES:I = 0x12c

.field private static final VOLUMES_ID:I = 0x12d

.field private static final WORKER_LOCK:I = 0x3

.field private static mExternalStoragePaths:[Ljava/lang/String; = null

.field private static final mMediaTableColumns:[Ljava/lang/String; = null

.field private static mNextNotifySystemTime:J = 0x0L

.field private static final mNotifyWaitTime:I = 0x3e8

.field private static mUri:Landroid/net/Uri;

.field public static mVolId:I

.field public static mVolumeName:Ljava/lang/String;

.field public static final mbMyLog:Z

.field public static mbScanning:Z

.field public static mbVolIdEnable:Z

.field private static final openFileColumns:[Ljava/lang/String;

.field private static final sArtistAlbumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultFolderNames:[Ljava/lang/String;

.field private static final sFolderArtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

.field private static final sIdOnlyColumn:[Ljava/lang/String;

.field public static scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;


# instance fields
.field private final MAX_WORKER_LOCK_TIME:J

.field private final SEARCH_COLUMN_BASIC_TEXT2:I

.field private mAlbumArtBaseUri:Landroid/net/Uri;

.field private mAlbumSize:I

.field private mAlbumSize512:I

.field private mCaseInsensitivePaths:Z

.field private mClosedDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field mDirectoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableMtpObjectCallbacks:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaScannerVolume:Ljava/lang/String;

.field private mMediaThumbQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mMtpService:Lcom/android/providers/media/IMtpService;

.field private final mMtpServiceConnection:Landroid/content/ServiceConnection;

.field private final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPendingThumbs:Ljava/util/HashSet;

.field private mSearchColsBasic:[Ljava/lang/String;

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSearchColsLegacy:[Ljava/lang/String;

.field private mSquareAlbum:Landroid/graphics/Bitmap;

.field private mSquareAlbum512:Landroid/graphics/Bitmap;

.field private mTempDatabasePath:Ljava/lang/String;

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbRequestStack:Ljava/util/Stack;

.field private mTransCanvas:Landroid/graphics/Canvas;

.field private mTransCanvas512:Landroid/graphics/Canvas;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeId:I

.field private final mWorkerLock:Ljava/lang/Object;

.field private mbUnNotify:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 136
    sput-boolean v3, Lcom/android/providers/media/MediaProvider;->IS_FOTA:Z

    .line 139
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    .line 140
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    .line 176
    const-string v0, ""

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mVolumeName:Ljava/lang/String;

    .line 181
    const/4 v0, -0x1

    sput v0, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 182
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->mbVolIdEnable:Z

    .line 183
    sput-boolean v3, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 191
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/providers/media/MediaProvider;->mNextNotifySystemTime:J

    .line 193
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mUri:Landroid/net/Uri;

    .line 245
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    .line 250
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    .line 701
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    .line 971
    const/high16 v0, 0x30

    sput v0, Lcom/android/providers/media/MediaProvider;->MAX_ALBUMTHUMBNAIL_FILE_SIZE:I

    .line 4503
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 4979
    new-instance v0, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    invoke-direct {v0, v7}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/media/MediaProvider$1;)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    .line 5670
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    .line 7037
    const-string v0, "MediaProvider"

    sput-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    .line 7105
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->htcInkSupported(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    .line 7219
    sput-object v7, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    .line 7221
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 7224
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 7228
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    .line 7233
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 7238
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    .line 7252
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/bulk_update"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7254
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7255
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7256
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7257
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7260
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio_playlists_map_old"

    const/16 v3, 0x4e21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7264
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    if-ne v0, v4, :cond_0

    .line 7265
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/htcink"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7271
    :cond_0
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->mbVolIdEnable:Z

    if-ne v0, v4, :cond_1

    .line 7272
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/volid/media"

    const/16 v3, 0x2712

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7273
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/volid/album_all"

    const/16 v3, 0x2713

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7274
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/volid/mtp"

    const/16 v3, 0x2714

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7277
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/files/volid"

    const/16 v3, 0x2718

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7281
    :cond_1
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7282
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7283
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7284
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7285
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7286
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7287
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7288
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7289
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#/members"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7292
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/all/members"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7294
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7295
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7296
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7297
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7298
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists"

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7299
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7300
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#/albums"

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7301
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums"

    const/16 v3, 0x74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7302
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums/#"

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7303
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart"

    const/16 v3, 0x77

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7304
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart/#"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7305
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/albumart"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7307
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7308
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7309
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7310
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails/#"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7312
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/media_scanner"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7314
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/fs_id"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7315
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/version"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7317
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/mtp_connected"

    const/16 v3, 0x2c1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7319
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7320
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7323
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7324
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file/#"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7325
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7326
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7327
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#/references"

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7332
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7334
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query/*"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7338
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7340
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query/*"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7344
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7345
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy/*"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7346
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    .line 160
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    .line 164
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    .line 170
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/providers/media/MediaProvider;->MAX_WORKER_LOCK_TIME:J

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mWorkerLock:Ljava/lang/Object;

    .line 192
    iput-boolean v3, p0, Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z

    .line 198
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "0 AS suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "text1 AS suggest_intent_query"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "CASE when grouporder=1 THEN data1 ELSE artist END AS data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CASE when grouporder=1 THEN data2 ELSE CASE WHEN grouporder=2 THEN NULL ELSE album END END AS data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "match as ar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "grouporder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NULL AS itemorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .line 217
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "data1"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 227
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "text1 AS suggest_text_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_intent_query"

    aput-object v2, v0, v1

    const-string v1, "(CASE WHEN grouporder=1 THEN \'%1\' ELSE CASE WHEN grouporder=3 THEN artist || \' - \' || album ELSE CASE WHEN text2!=\'<unknown>\' THEN text2 ELSE NULL END END END) AS suggest_text_2"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .line 243
    iput v5, p0, Lcom/android/providers/media/MediaProvider;->SEARCH_COLUMN_BASIC_TEXT2:I

    .line 254
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    .line 256
    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    new-instance v0, Lcom/android/providers/media/MediaProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 687
    new-instance v0, Lcom/android/providers/media/MediaProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$3;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    .line 7070
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    .line 7089
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eq v4, v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x200

    :goto_0
    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize512:I

    .line 7099
    const/16 v0, 0x200

    const/16 v1, 0x200

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum512:Landroid/graphics/Bitmap;

    .line 7100
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum512:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas512:Landroid/graphics/Canvas;

    .line 7125
    const/16 v0, 0x140

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    .line 7126
    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    iget v1, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum:Landroid/graphics/Bitmap;

    .line 7127
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas:Landroid/graphics/Canvas;

    .line 7128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    .line 7129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 7746
    return-void

    .line 7089
    :cond_1
    const/16 v0, 0x140

    goto :goto_0
.end method

.method public static AppnedAliveConstrain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "table"
    .parameter "where"

    .prologue
    .line 7579
    if-nez p0, :cond_0

    move-object v0, p1

    .line 7598
    .end local p1
    .local v0, where:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 7583
    .end local v0           #where:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 7585
    const-string v1, "audio_meta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "images"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "files"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    .line 7589
    .end local p1
    .restart local v0       #where:Ljava/lang/String;
    goto :goto_0

    .line 7592
    .end local v0           #where:Ljava/lang/String;
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 7593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".alive=1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v0, p1

    .line 7598
    .end local p1
    .restart local v0       #where:Ljava/lang/String;
    goto :goto_0

    .line 7595
    .end local v0           #where:Ljava/lang/String;
    .restart local p1
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".alive=1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private BulkUpdate(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 23
    .parameter "szTable"
    .parameter "initialValues"

    .prologue
    .line 6981
    const-string v21, "BulkUpdate"

    const-string v22, "BulkUpdate executed\n"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6982
    const-string v21, "UPDATE_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 6983
    .local v5, BaseUri:Landroid/net/Uri;
    const-string v21, "INPUT_COLS"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 6984
    .local v6, ColsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 6986
    .local v12, nCols:I
    if-lez v12, :cond_0

    .line 6987
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    .line 6988
    .local v7, _database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v7, :cond_1

    .line 7033
    .end local v7           #_database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    :goto_0
    return-void

    .line 7000
    .restart local v7       #_database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_1
    invoke-virtual {v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 7002
    .local v8, _db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v21, "WHERE_COL"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 7003
    .local v17, szWhereCol:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/Object;

    .line 7004
    .local v4, AllColArray:[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, a:I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 7005
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    aput-object v21, v4, v9

    .line 7004
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7007
    :cond_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 7009
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " =? "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 7010
    .local v20, whereClause:Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v4, v21

    check-cast v21, Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 7011
    .local v13, nRows:I
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 7013
    .local v19, whereArgs:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, r:I
    :goto_2
    if-ge v14, v13, :cond_5

    .line 7014
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 7015
    .local v18, values:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, c:I
    :goto_3
    if-ge v11, v12, :cond_4

    .line 7016
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 7017
    .local v15, szColName:Ljava/lang/String;
    aget-object v10, v4, v11

    check-cast v10, Ljava/util/ArrayList;

    .line 7018
    .local v10, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 7020
    .local v16, szValue:Ljava/lang/String;
    move-object/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 7021
    const/16 v21, 0x0

    aput-object v16, v19, v21

    .line 7015
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 7023
    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 7030
    .end local v10           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #c:I
    .end local v13           #nRows:I
    .end local v14           #r:I
    .end local v15           #szColName:Ljava/lang/String;
    .end local v16           #szValue:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    .end local v19           #whereArgs:[Ljava/lang/String;
    .end local v20           #whereClause:Ljava/lang/String;
    :catchall_0
    move-exception v21

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v21

    .line 7026
    .restart local v11       #c:I
    .restart local v13       #nRows:I
    .restart local v14       #r:I
    .restart local v18       #values:Landroid/content/ContentValues;
    .restart local v19       #whereArgs:[Ljava/lang/String;
    .restart local v20       #whereClause:Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7013
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 7028
    .end local v11           #c:I
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7030
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method public static DeleteShmWalDB(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "databasesToDel"
    .parameter "dbName"

    .prologue
    .line 740
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 744
    :cond_0
    const/4 v5, 0x0

    .line 778
    :goto_0
    return v5

    .line 747
    :cond_1
    const-string v3, ".db-shm"

    .line 748
    .local v3, shm:Ljava/lang/String;
    const-string v4, ".db-wal"

    .line 749
    .local v4, wal:Ljava/lang/String;
    const-string v1, "-journal"

    .line 754
    .local v1, journal:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    :try_start_0
    array-length v5, p1

    if-ge v2, v5, :cond_5

    .line 756
    aget-object v5, p1, v2

    if-nez v5, :cond_3

    .line 754
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 760
    :cond_3
    aget-object v5, p1, v2

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 764
    aget-object v5, p1, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, p1, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, p1, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 768
    :cond_4
    aget-object v5, p1, v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 770
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 773
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "[DeleteShmWalDB] "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static IsNeedAliveConstrain(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2
    .parameter "values"
    .parameter "where"

    .prologue
    .line 7552
    const/4 v0, 0x1

    .line 7554
    .local v0, bRes:Z
    if-eqz p1, :cond_1

    const-string v1, " alvie"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7555
    const/4 v0, 0x0

    .line 7574
    :cond_0
    :goto_0
    return v0

    .line 7556
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, " volid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7557
    const/4 v0, 0x0

    goto :goto_0

    .line 7558
    :cond_2
    if-eqz p0, :cond_3

    const-string v1, "alive"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7559
    const/4 v0, 0x0

    goto :goto_0

    .line 7560
    :cond_3
    if-eqz p0, :cond_0

    const-string v1, "volid"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7561
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/providers/media/MediaProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/IMtpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/IMtpService;)Lcom/android/providers/media/IMtpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object p1
.end method

.method static synthetic access$102(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    sput-wide p0, Lcom/android/providers/media/MediaProvider;->mNextNotifySystemTime:J

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/android/providers/media/MediaProvider;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V

    return-void
.end method

.method static synthetic access$1200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->sendUpgradeComplete(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/providers/media/MediaProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addDefaultPlaylist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 7368
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7372
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, " !01"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7373
    const-string v3, "audio_playlists"

    invoke-virtual {p0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 7375
    .local v0, rowId:J
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 7376
    const-string v3, "name"

    const-string v4, " !02"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7377
    const-string v3, "audio_playlists"

    invoke-virtual {p0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 7378
    return-void
.end method

.method private albumArtExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 12
    .parameter "db"
    .parameter "album_id"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 6563
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 6564
    .local v2, cols:[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v1

    .line 6566
    .local v4, selargs:[Ljava/lang/String;
    const-string v1, "album_art"

    const-string v3, "album_id=?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6568
    .local v8, c:Landroid/database/Cursor;
    const-string v11, ""

    .line 6570
    .local v11, sFile:Ljava/lang/String;
    const/4 v9, 0x0

    .line 6572
    .local v9, exists:Z
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6592
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple entries in table album_art for album_id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6596
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6601
    :cond_1
    return v9

    .line 6577
    :pswitch_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6579
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6581
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6583
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 6584
    const/4 v9, 0x1

    goto :goto_0

    .line 6596
    .end local v10           #f:Ljava/io/File;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 6572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 23
    .parameter "volume"

    .prologue
    .line 6710
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 6712
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Opening and closing databases not allowed."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6717
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mClosedDatabases:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/ref/WeakReference;

    .line 6718
    .local v21, wr_helper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/providers/media/MediaProvider$DatabaseHelper;>;"
    if-eqz v21, :cond_1

    .line 6719
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6720
    .local v15, helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mClosedDatabases:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6722
    if-eqz v15, :cond_1

    .line 6723
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "[attachVolume] Close previous DatabaseHelper begins"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6724
    invoke-virtual {v15}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->close()V

    .line 6725
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "[attachVolume] Close previous DatabaseHelper ends"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6730
    .end local v15           #helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6731
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    monitor-exit v22

    .line 6890
    :goto_0
    return-object v5

    .line 6743
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 6745
    .local v3, context:Landroid/content/Context;
    const-string v5, "internal"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6749
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const-string v4, "internal.db"

    sget-object v5, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$STORAGE;ZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 6848
    .local v2, db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6850
    iget-object v5, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    sget-object v6, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v5, v6, :cond_3

    .line 6853
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/MediaProvider;->createDefaultFolders(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6887
    :cond_3
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 6752
    .end local v2           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_4
    :try_start_1
    const-string v5, "external"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6753
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6754
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v18, v5, v6

    .line 6755
    .local v18, path:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v20

    .line 6759
    .local v20, volumeID:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "external-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6763
    .local v4, dbName:Ljava/lang/String;
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    sget-object v5, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$STORAGE;ZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 6766
    .restart local v2       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    .line 6768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " volume ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/media/MediaProvider;->mVolumeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 6887
    .end local v2           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #dbName:Ljava/lang/String;
    .end local v18           #path:Ljava/lang/String;
    .end local v20           #volumeID:I
    :catchall_0
    move-exception v5

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 6775
    .restart local v3       #context:Landroid/content/Context;
    :cond_5
    :try_start_2
    const-string v5, "external.db"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 6776
    .local v13, dbFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    .line 6780
    const/16 v19, 0x0

    .line 6781
    .local v19, recentDbFile:Ljava/io/File;
    invoke-virtual {v3}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v11

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v12, v11, v16

    .line 6782
    .local v12, database:Ljava/lang/String;
    const-string v5, "external-"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6783
    invoke-virtual {v3, v12}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 6784
    .local v14, file:Ljava/io/File;
    if-nez v19, :cond_7

    .line 6785
    move-object/from16 v19, v14

    .line 6781
    .end local v14           #file:Ljava/io/File;
    :cond_6
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 6786
    .restart local v14       #file:Ljava/io/File;
    :cond_7
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_8

    .line 6787
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 6788
    move-object/from16 v19, v14

    goto :goto_3

    .line 6790
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 6794
    .end local v12           #database:Ljava/lang/String;
    .end local v14           #file:Ljava/io/File;
    :cond_9
    if-eqz v19, :cond_a

    .line 6795
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 6811
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v19           #recentDbFile:Ljava/io/File;
    :cond_a
    :goto_4
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$STORAGE;ZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 6814
    .restart local v2       #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " volume ID: none"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/media/MediaProvider;->mVolumeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 6803
    .end local v2           #db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    .restart local v19       #recentDbFile:Ljava/io/File;
    :cond_b
    move-object/from16 v13, v19

    goto :goto_4

    .line 6845
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #dbFile:Ljava/io/File;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v19           #recentDbFile:Ljava/io/File;
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no volume named "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private checkPauseTask()V
    .locals 4

    .prologue
    .line 5816
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.media/pause_scan"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5817
    .local v1, file:Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5818
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 5819
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v2, "/data/data/com.android.providers.media/pause_scan"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0

    .line 5822
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 5823
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "checkPauseTask Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5825
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "userArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3590
    .local p1, prepend:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3591
    .local v2, presize:I
    if-nez v2, :cond_0

    .line 3603
    .end local p2
    :goto_0
    return-object p2

    .line 3595
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    .line 3596
    .local v3, usersize:I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 3597
    .local v0, combined:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 3598
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 3597
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3595
    .end local v0           #combined:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #usersize:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3600
    .restart local v0       #combined:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #usersize:I
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 3601
    add-int v4, v2, v1

    aget-object v5, p2, v1

    aput-object v5, v0, v4

    .line 3600
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 3603
    goto :goto_0
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "data"
    .parameter "values"

    .prologue
    .line 2674
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 2675
    .local v1, parentFile:Ljava/io/File;
    if-nez v1, :cond_0

    .line 2676
    new-instance v1, Ljava/io/File;

    .end local v1           #parentFile:Ljava/io/File;
    const-string v3, "/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2682
    .restart local v1       #parentFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2683
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, name:Ljava/lang/String;
    const-string v3, "bucket_id"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2689
    const-string v3, "bucket_display_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    return-void
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    .line 2698
    if-nez p0, :cond_1

    const-string v1, ""

    .line 2699
    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2700
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 2701
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2703
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    return-void

    .line 2698
    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static computeTakenTime(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 2713
    const-string v1, "datetaken"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2716
    const-string v1, "date_modified"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2717
    .local v0, lastModified:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 2718
    const-string v1, "datetaken"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2721
    .end local v0           #lastModified:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private createDefaultFolders(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 719
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v7, "created_default_folders"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_2

    .line 720
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 721
    .local v3, folderName:Ljava/lang/String;
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 722
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 723
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 724
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 720
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 728
    .end local v2           #file:Ljava/io/File;
    .end local v3           #folderName:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 729
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 730
    const-string v7, "created_default_folders"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    .line 6903
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 6905
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Opening and closing databases not allowed."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6909
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6910
    .local v3, volume:Ljava/lang/String;
    const-string v4, "internal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6911
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Deleting the internal volume is not allowed"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6916
    :cond_1
    const-string v4, "external"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6919
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no volume named "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6925
    :cond_2
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v5

    .line 6926
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6928
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6976
    :goto_0
    return-void

    .line 6935
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6939
    .local v2, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6955
    .end local v2           #file:Ljava/io/File;
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6960
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mClosedDatabases:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6968
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6972
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 6942
    :catch_0
    move-exception v1

    .line 6945
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Can\'t touch database file"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6968
    .end local v0           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 6963
    .restart local v0       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :catch_1
    move-exception v1

    .line 6964
    .local v1, e:Landroid/database/SQLException;
    :try_start_5
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "[MediaProvider][detachVolume]"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "db"
    .parameter "qb"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"
    .parameter "mode"
    .parameter "limit"

    .prologue
    .line 3611
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v14, ""

    .line 3612
    .local v14, mSearchString:Ljava/lang/String;
    :goto_0
    const-string v1, "  "

    const-string v2, " "

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 3614
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 3616
    .local v17, searchWords:[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 3617
    .local v5, wildcardWords:[Ljava/lang/String;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v10

    .line 3618
    .local v10, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 3619
    move-object/from16 v0, v17

    array-length v13, v0

    .line 3621
    .local v13, len:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v13, :cond_4

    .line 3624
    aget-object v1, v17, v11

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3625
    .local v12, key:Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 3626
    const-string v1, "%"

    const-string v2, "\\%"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 3627
    const-string v1, "_"

    const-string v2, "\\_"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 3628
    aget-object v1, v17, v11

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v17, v11

    const-string v2, "an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v17, v11

    const-string v2, "the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "%"

    :goto_3
    aput-object v1, v5, v11

    .line 3621
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3611
    .end local v5           #wildcardWords:[Ljava/lang/String;
    .end local v10           #col:Ljava/text/Collator;
    .end local v11           #i:I
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #len:I
    .end local v14           #mSearchString:Ljava/lang/String;
    .end local v17           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 3614
    .restart local v14       #mSearchString:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_1

    .line 3628
    .restart local v5       #wildcardWords:[Ljava/lang/String;
    .restart local v10       #col:Ljava/text/Collator;
    .restart local v11       #i:I
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #len:I
    .restart local v17       #searchWords:[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 3633
    .end local v12           #key:Ljava/lang/String;
    :cond_4
    const-string v4, ""

    .line 3636
    .local v4, where:Ljava/lang/String;
    const-string v15, "/external/audio/search/search_suggest_query"

    .line 3637
    .local v15, s1:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 3639
    .local v16, s2:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 3642
    const/4 v4, 0x0

    .line 3643
    const/4 v5, 0x0

    .line 3656
    :cond_5
    const-string v1, "search"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3658
    const/16 v1, 0x192

    move/from16 v0, p8

    if-ne v0, v1, :cond_8

    .line 3659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 3666
    .local v3, cols:[Ljava/lang/String;
    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 3647
    .end local v3           #cols:[Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v11, v1, :cond_5

    .line 3648
    if-nez v11, :cond_7

    .line 3649
    const-string v4, "match LIKE ? ESCAPE \'\\\'"

    .line 3647
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3651
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 3660
    :cond_8
    const/16 v1, 0x191

    move/from16 v0, p8

    if-ne v0, v1, :cond_9

    .line 3661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .restart local v3       #cols:[Ljava/lang/String;
    goto :goto_4

    .line 3663
    .end local v3           #cols:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .restart local v3       #cols:[Ljava/lang/String;
    goto :goto_4
.end method

.method private ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter "internal"
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 3764
    const-string v2, "_data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3765
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3766
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/media/MediaProvider;->generateFileName(Lcom/android/providers/media/MediaProvider$STORAGE;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3767
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3768
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3774
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3770
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    move-object v1, p2

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 3776
    :cond_1
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4952
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4953
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4970
    :goto_0
    return v5

    .line 4958
    :cond_0
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 4959
    .local v4, secondSlash:I
    if-ge v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 4960
    :cond_1
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4961
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4962
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 4963
    goto :goto_0

    .line 4964
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 4966
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 4967
    :catch_0
    move-exception v3

    .line 4968
    .local v3, ioe:Ljava/io/IOException;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "File creation failed"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 4970
    goto :goto_0
.end method

.method private generateFileName(Lcom/android/providers/media/MediaProvider$STORAGE;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "internal"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 4934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4936
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-ne p1, v1, :cond_0

    .line 4937
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Writing to internal storage is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4946
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 25
    .parameter "context"
    .parameter "path"

    .prologue
    .line 5869
    const/4 v4, 0x0

    .line 5873
    .local v4, compressed:[B
    if-eqz p1, :cond_0

    const-string v21, "content://drm"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 5875
    const/16 v21, 0x0

    .line 6002
    :goto_0
    return-object v21

    .line 5879
    :cond_0
    const/4 v3, 0x0

    .line 5881
    .local v3, bestmatch:Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5882
    .local v11, f:Ljava/io/File;
    const/high16 v21, 0x1000

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 5885
    .local v16, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v17, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;-><init>(Landroid/content/Context;)V

    .line 5886
    .local v17, scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B

    move-result-object v4

    .line 5887
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 5898
    if-nez v4, :cond_4

    if-eqz p1, :cond_4

    .line 5899
    const/16 v21, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 5900
    .local v14, lastSlash:I
    if-lez v14, :cond_4

    .line 5902
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5903
    .local v2, artPath:Ljava/lang/String;
    sget-object v21, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v18, v21, v22

    .line 5904
    .local v18, sdroot:Ljava/lang/String;
    sget-object v21, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 5908
    .local v6, dwndir:Ljava/lang/String;
    sget-object v22, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    monitor-enter v22
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5909
    :try_start_1
    sget-object v21, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 5910
    sget-object v21, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 5946
    :cond_1
    :goto_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5948
    if-eqz v3, :cond_4

    .line 5949
    :try_start_2
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5951
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v21

    if-eqz v21, :cond_4

    .line 5960
    :try_start_3
    sget v21, Lcom/android/providers/media/MediaProvider;->MAX_ALBUMTHUMBNAIL_FILE_SIZE:I

    if-lez v21, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v21

    sget v23, Lcom/android/providers/media/MediaProvider;->MAX_ALBUMTHUMBNAIL_FILE_SIZE:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_3

    .line 5963
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v4, v0, [B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 5975
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 5977
    const/16 v19, 0x0

    .line 5979
    .local v19, stream:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5980
    .end local v19           #stream:Ljava/io/FileInputStream;
    .local v20, stream:Ljava/io/FileInputStream;
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 5984
    if-eqz v20, :cond_4

    .line 5985
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .end local v2           #artPath:Ljava/lang/String;
    .end local v6           #dwndir:Ljava/lang/String;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #file:Ljava/io/File;
    .end local v14           #lastSlash:I
    .end local v16           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v17           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .end local v18           #sdroot:Ljava/lang/String;
    .end local v20           #stream:Ljava/io/FileInputStream;
    :cond_4
    :goto_3
    move-object/from16 v21, v4

    .line 6002
    goto/16 :goto_0

    .line 5911
    .restart local v2       #artPath:Ljava/lang/String;
    .restart local v6       #dwndir:Ljava/lang/String;
    .restart local v11       #f:Ljava/io/File;
    .restart local v14       #lastSlash:I
    .restart local v16       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v17       #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .restart local v18       #sdroot:Ljava/lang/String;
    :cond_5
    :try_start_7
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 5913
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5914
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 5915
    .local v9, entrynames:[Ljava/lang/String;
    if-nez v9, :cond_6

    .line 5916
    const/16 v21, 0x0

    monitor-exit v22

    goto/16 :goto_0

    .line 5946
    .end local v5           #dir:Ljava/io/File;
    .end local v9           #entrynames:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v21
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 5994
    .end local v2           #artPath:Ljava/lang/String;
    .end local v6           #dwndir:Ljava/lang/String;
    .end local v11           #f:Ljava/io/File;
    .end local v14           #lastSlash:I
    .end local v16           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v17           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .end local v18           #sdroot:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 5995
    .local v7, e:Ljava/io/IOException;
    sget-object v21, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v22, "denny. getCompressedAlbumArt IOException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 5918
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #artPath:Ljava/lang/String;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v6       #dwndir:Ljava/lang/String;
    .restart local v9       #entrynames:[Ljava/lang/String;
    .restart local v11       #f:Ljava/io/File;
    .restart local v14       #lastSlash:I
    .restart local v16       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v17       #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .restart local v18       #sdroot:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 5919
    const/16 v15, 0x3e8

    .line 5920
    .local v15, matchlevel:I
    :try_start_9
    array-length v0, v9

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x1

    .local v13, i:I
    :goto_4
    if-ltz v13, :cond_7

    .line 5921
    aget-object v21, v9, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 5922
    .local v8, entry:Ljava/lang/String;
    const-string v21, "albumart.jpg"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 5923
    aget-object v3, v9, v13

    .line 5944
    .end local v8           #entry:Ljava/lang/String;
    :cond_7
    sget-object v21, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 5925
    .restart local v8       #entry:Ljava/lang/String;
    :cond_8
    const-string v21, "albumart"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "large.jpg"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_a

    .line 5928
    aget-object v3, v9, v13

    .line 5929
    const/4 v15, 0x1

    .line 5920
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 5930
    :cond_a
    const-string v21, "albumart"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, ".jpg"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v15, v0, :cond_b

    .line 5933
    aget-object v3, v9, v13

    .line 5934
    const/4 v15, 0x2

    goto :goto_5

    .line 5935
    :cond_b
    const-string v21, ".jpg"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v21, 0x3

    move/from16 v0, v21

    if-le v15, v0, :cond_c

    .line 5936
    aget-object v3, v9, v13

    .line 5937
    const/4 v15, 0x3

    goto :goto_5

    .line 5938
    :cond_c
    const-string v21, ".png"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v15, v0, :cond_9

    .line 5939
    aget-object v3, v9, v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5940
    const/4 v15, 0x4

    goto :goto_5

    .line 5970
    .end local v5           #dir:Ljava/io/File;
    .end local v8           #entry:Ljava/lang/String;
    .end local v9           #entrynames:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v15           #matchlevel:I
    .restart local v12       #file:Ljava/io/File;
    :catch_1
    move-exception v10

    .line 5971
    .local v10, ex:Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x0

    .line 5972
    :try_start_a
    sget-object v21, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v22, "New compressed Exception: "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    .line 5996
    .end local v2           #artPath:Ljava/lang/String;
    .end local v6           #dwndir:Ljava/lang/String;
    .end local v10           #ex:Ljava/lang/OutOfMemoryError;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #file:Ljava/io/File;
    .end local v14           #lastSlash:I
    .end local v16           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v17           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .end local v18           #sdroot:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 5997
    .local v7, e:Ljava/lang/Exception;
    sget-object v21, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v22, "getCompressedAlbumArt "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 5981
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #artPath:Ljava/lang/String;
    .restart local v6       #dwndir:Ljava/lang/String;
    .restart local v11       #f:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #lastSlash:I
    .restart local v16       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v17       #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .restart local v18       #sdroot:Ljava/lang/String;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    .line 5982
    .local v10, ex:Ljava/io/IOException;
    :goto_6
    const/4 v4, 0x0

    .line 5984
    if-eqz v19, :cond_4

    .line 5985
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_3

    .line 5984
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    :goto_7
    if-eqz v19, :cond_d

    .line 5985
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    :cond_d
    throw v21
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 5984
    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 5981
    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v10

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method static getDatabaseFileName(Lcom/android/providers/media/MediaProvider$STORAGE;)Ljava/lang/String;
    .locals 6
    .parameter "storageType"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 7980
    sget-object v3, Lcom/android/providers/media/MediaProvider$5;->$SwitchMap$com$android$providers$media$MediaProvider$STORAGE:[I

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$STORAGE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 7998
    :cond_0
    :goto_0
    return-object v0

    .line 7982
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "internal.db"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7984
    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7985
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    .line 7986
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v1, v3, v5

    .line 7987
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 7990
    .local v2, volumeID:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7991
    .local v0, dbName:Ljava/lang/String;
    goto :goto_0

    .line 7995
    .end local v0           #dbName:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #volumeID:I
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "external.db"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 4
    .parameter "uri"

    .prologue
    .line 6654
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 6655
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 6656
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v1

    .line 6659
    :goto_0
    return-object v0

    .line 6658
    :cond_0
    monitor-exit v1

    .line 6659
    const/4 v0, 0x0

    goto :goto_0

    .line 6658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .locals 26
    .parameter "db"
    .parameter "table"
    .parameter "keyField"
    .parameter "nameField"
    .parameter "rawName"
    .parameter "cacheName"
    .parameter "path"
    .parameter "albumHash"
    .parameter "artist"
    .parameter
    .parameter "srcuri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 6453
    .local p10, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 6454
    :cond_0
    const-string p5, "<unknown>"

    .line 6456
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 6458
    .local v19, k:Ljava/lang/String;
    if-nez v19, :cond_3

    .line 6460
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "null key"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6461
    const-wide/16 v22, -0x1

    .line 6558
    :cond_2
    :goto_0
    return-wide v22

    .line 6464
    :cond_3
    const-string v5, "albums"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 6465
    .local v17, isAlbum:Z
    const-string v5, "<unknown>"

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 6468
    .local v18, isUnknown:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v16

    .line 6479
    .local v16, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-eqz v17, :cond_4

    .line 6480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6481
    if-eqz v18, :cond_4

    .line 6482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6486
    :cond_4
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v19, v9, v5

    .line 6487
    .local v9, selargs:[Ljava/lang/String;
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 6490
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 6547
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple entries in table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6548
    const-wide/16 v22, -0x1

    .line 6552
    .local v22, rowId:J
    :cond_5
    :goto_1
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6555
    :cond_6
    if-eqz p10, :cond_2

    if-nez v18, :cond_2

    .line 6556
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 6493
    .end local v22           #rowId:J
    :pswitch_0
    :try_start_1
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 6494
    .local v21, otherValues:Landroid/content/ContentValues;
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6495
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6496
    const-string v5, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v22

    .line 6500
    .restart local v22       #rowId:J
    if-eqz v16, :cond_7

    if-eqz p7, :cond_7

    if-eqz v17, :cond_7

    if-nez v18, :cond_7

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    sget-object v6, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v5, v6, :cond_7

    .line 6504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 6506
    :cond_7
    const-wide/16 v5, 0x0

    cmp-long v5, v22, v5

    if-lez v5, :cond_5

    .line 6507
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 6508
    .local v25, volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 6509
    .local v24, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 6552
    .end local v21           #otherValues:Landroid/content/ContentValues;
    .end local v22           #rowId:J
    .end local v24           #uri:Landroid/net/Uri;
    .end local v25           #volume:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 6515
    :pswitch_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6516
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 6519
    .restart local v22       #rowId:J
    if-eqz v16, :cond_9

    if-eqz p7, :cond_9

    if-eqz v17, :cond_9

    if-nez v18, :cond_9

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    sget-object v6, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v5, v6, :cond_9

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/providers/media/MediaProvider;->albumArtExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 6525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 6532
    :cond_9
    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6533
    .local v15, currentFancyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v15}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6534
    .local v13, bestName:Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 6536
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 6537
    .local v20, newValues:Landroid/content/ContentValues;
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6539
    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 6540
    .restart local v25       #volume:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/audio/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 6541
    .restart local v24       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 6490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 12
    .parameter "db"
    .parameter "handle"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4407
    const-string v1, "files"

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4411
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4412
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4413
    .local v10, playlistId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 4414
    .local v9, mediaType:I
    const/4 v0, 0x4

    if-eq v9, v0, :cond_1

    .line 4422
    if-eqz v8, :cond_0

    .line 4423
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4426
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_0
    :goto_0
    return-object v5

    .line 4418
    .restart local v9       #mediaType:I
    .restart local v10       #playlistId:J
    :cond_1
    :try_start_1
    const-string v0, "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 4422
    if-eqz v8, :cond_0

    .line 4423
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4422
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_2
    if-eqz v8, :cond_0

    .line 4423
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4422
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 4423
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 18
    .parameter "db"
    .parameter "path"

    .prologue
    .line 4016
    const/16 v3, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 4017
    .local v16, lastSlash:I
    if-lez v16, :cond_8

    .line 4018
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 4019
    .local v17, parentPath:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v13, v3, :cond_2

    .line 4020
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v3, v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4021
    const-wide/16 v14, 0x0

    .line 4072
    .end local v13           #i:I
    .end local v17           #parentPath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v14

    .line 4019
    .restart local v13       #i:I
    .restart local v17       #parentPath:Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4025
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 4026
    .local v12, cid:Ljava/lang/Long;
    if-eqz v12, :cond_3

    .line 4028
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_1

    .line 4035
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    if-eqz v3, :cond_5

    const-string v6, "_data LIKE ?AND format=12289"

    .line 4039
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v17, v7, v3

    .line 4052
    .local v7, selargs:[Ljava/lang/String;
    const-string v4, "files"

    sget-object v5, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4055
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 4057
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v14

    .line 4064
    .local v14, id:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4069
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4035
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selargs:[Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_5
    const-string v6, "_data=?"

    goto :goto_2

    .line 4060
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #selargs:[Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4061
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    .restart local v14       #id:J
    goto :goto_3

    .line 4069
    .end local v14           #id:J
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 4072
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selargs:[Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #cid:Ljava/lang/Long;
    .end local v13           #i:I
    .end local v17           #parentPath:Ljava/lang/String;
    :cond_8
    const-wide/16 v14, 0x0

    goto :goto_1
.end method

.method public static getRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7510
    const-string v0, ""

    .line 7512
    .local v0, res:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7514
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7522
    :cond_0
    return-object v0
.end method

.method public static getStorage(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$STORAGE;
    .locals 1
    .parameter "uri"

    .prologue
    .line 7759
    sget-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    return-object v0
.end method

.method public static getStorage(Ljava/lang/String;)Lcom/android/providers/media/MediaProvider$STORAGE;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 7766
    sget-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    return-object v0
.end method

.method private getStorageId(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 4077
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 4078
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 4079
    .local v2, test:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4080
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4081
    .local v1, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 4082
    :cond_0
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    .line 4087
    .end local v1           #length:I
    .end local v2           #test:Ljava/lang/String;
    :goto_1
    return v3

    .line 4077
    .restart local v2       #test:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4087
    .end local v2           #test:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    goto :goto_1
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .locals 5
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 4984
    const/4 v0, 0x0

    .line 4985
    .local v0, where:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 5128
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4987
    :sswitch_0
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4988
    const-string v0, "media_type=1"

    .line 5133
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5142
    :goto_1
    return-void

    .line 4992
    :sswitch_1
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 4993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4994
    goto :goto_0

    .line 4997
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4999
    :sswitch_3
    const-string v1, "thumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 5003
    :sswitch_4
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5004
    const-string v0, "media_type=2"

    .line 5005
    goto :goto_0

    .line 5008
    :sswitch_5
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5010
    goto/16 :goto_0

    .line 5013
    :sswitch_6
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5015
    goto/16 :goto_0

    .line 5018
    :sswitch_7
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5021
    goto/16 :goto_0

    .line 5024
    :sswitch_8
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5026
    goto/16 :goto_0

    .line 5029
    :sswitch_9
    const-string v1, "audio_playlists"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND playlists_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5032
    goto/16 :goto_0

    .line 5035
    :sswitch_a
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5039
    :sswitch_b
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5041
    goto/16 :goto_0

    .line 5044
    :sswitch_c
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genre_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5046
    goto/16 :goto_0

    .line 5055
    :sswitch_d
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5056
    const-string v0, "media_type=4"

    .line 5057
    goto/16 :goto_0

    .line 5060
    :sswitch_e
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5062
    goto/16 :goto_0

    .line 5065
    :sswitch_f
    const-string v1, "audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5067
    goto/16 :goto_0

    .line 5070
    :sswitch_10
    const-string v1, "audio_playlists_map"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5073
    goto/16 :goto_0

    .line 5076
    :sswitch_11
    const-string v1, "album_art"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5078
    goto/16 :goto_0

    .line 5081
    :sswitch_12
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5082
    const-string v0, "media_type=3"

    .line 5083
    goto/16 :goto_0

    .line 5086
    :sswitch_13
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5088
    goto/16 :goto_0

    .line 5091
    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5093
    :sswitch_15
    const-string v1, "videothumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5098
    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5101
    :sswitch_17
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5106
    :sswitch_18
    const-string v1, "htcink"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5113
    :sswitch_19
    const-string v1, "volid_info"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5117
    :sswitch_1a
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5123
    :sswitch_1b
    const-string v1, "audio_playlists_map_old"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5137
    :cond_0
    iput-object p3, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 5140
    :cond_1
    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 4985
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x78 -> :sswitch_11
        0xc8 -> :sswitch_12
        0xc9 -> :sswitch_13
        0xca -> :sswitch_15
        0xcb -> :sswitch_14
        0x2bc -> :sswitch_17
        0x2bd -> :sswitch_16
        0x2be -> :sswitch_17
        0x2bf -> :sswitch_16
        0x2711 -> :sswitch_18
        0x2712 -> :sswitch_19
        0x2718 -> :sswitch_1a
        0x4e21 -> :sswitch_1b
    .end sparse-switch
.end method

.method private getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "db"
    .parameter "path"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 6144
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 6145
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6146
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 6147
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 6148
    iput-object p5, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 6149
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public static getUsbStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7546
    const-string v0, "/mnt/sdcard/usb"

    .line 7547
    .local v0, res:Ljava/lang/String;
    return-object v0
.end method

.method public static getVirtualRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7528
    const-string v0, ""

    .line 7530
    .local v0, res:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getVirtualRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getVirtualRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7532
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getVirtualRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7541
    :cond_0
    return-object v0
.end method

.method private static htcInkSupported(I)Z
    .locals 1
    .parameter "htcDeviceFlag"

    .prologue
    .line 7111
    sparse-switch p0, :sswitch_data_0

    .line 7121
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7119
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 7111
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7b -> :sswitch_0
        0x81 -> :sswitch_0
        0xaf -> :sswitch_0
        0xdd -> :sswitch_0
    .end sparse-switch
.end method

.method private static insertAudioMeta(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .parameter "db"

    .prologue
    .line 7727
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "[insertAudioMeta]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7728
    const/4 v0, 0x0

    .line 7730
    .local v0, bSuccess:Z
    :try_start_0
    const-string v3, "INSERT INTO files (_id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,volid,alive,is_podcast,bookmark,old_id,media_type) SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,volid,alive,is_podcast,bookmark,_id,2 FROM am_backup;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7734
    const/4 v0, 0x1

    .line 7738
    const-string v3, "DROP TABLE IF EXISTS am_backup"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7739
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "[insertAudioMeta]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 7740
    .end local v0           #bSuccess:Z
    .local v1, bSuccess:I
    :goto_0
    return v1

    .line 7735
    .end local v1           #bSuccess:I
    .restart local v0       #bSuccess:Z
    :catch_0
    move-exception v2

    .line 7736
    .local v2, exception:Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "[insertAudioMeta] fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7738
    const-string v3, "DROP TABLE IF EXISTS am_backup"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7739
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "[insertAudioMeta]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 7740
    .restart local v1       #bSuccess:I
    goto :goto_0

    .line 7738
    .end local v1           #bSuccess:I
    .end local v2           #exception:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    const-string v3, "DROP TABLE IF EXISTS am_backup"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7739
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "[insertAudioMeta]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 7740
    .restart local v1       #bSuccess:I
    goto :goto_0
.end method

.method private insertDirectory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .parameter "db"
    .parameter "path"

    .prologue
    .line 4001
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4002
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "format"

    const/16 v5, 0x3001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4003
    const-string v4, "_data"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4004
    const-string v4, "parent"

    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4005
    const-string v4, "storage_id"

    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4006
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4007
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4008
    const-string v4, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4010
    :cond_0
    const-string v4, "files"

    const-string v5, "date_modified"

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 4011
    .local v1, rowId:J
    invoke-direct {p0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 4012
    return-wide v1
.end method

.method private insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J
    .locals 55
    .parameter "database"
    .parameter "uri"
    .parameter "initialValues"
    .parameter "mediaType"
    .parameter "notify"

    .prologue
    .line 4092
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 4093
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v53, 0x0

    .line 4095
    .local v53, values:Landroid/content/ContentValues;
    packed-switch p4, :pswitch_data_0

    .line 4231
    :goto_0
    if-nez v53, :cond_0

    .line 4232
    new-instance v53, Landroid/content/ContentValues;

    .end local v53           #values:Landroid/content/ContentValues;
    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4235
    .restart local v53       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v3, "_data"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4238
    .local v10, path:Ljava/lang/String;
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    if-eqz v3, :cond_e

    if-eqz v10, :cond_e

    const-string v3, ".htcink"

    invoke-virtual {v10, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4240
    const-string v3, "htcink"

    const-string v5, "name"

    move-object/from16 v0, v53

    invoke-virtual {v4, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v44

    .line 4243
    .local v44, rowId:J
    const-wide/16 v44, 0x0

    .line 4403
    .end local v44           #rowId:J
    :cond_1
    :goto_1
    return-wide v44

    .line 4097
    .end local v10           #path:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v5, ".jpg"

    const-string v6, "DCIM/Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1, v5, v6}, Lcom/android/providers/media/MediaProvider;->ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v53

    .line 4099
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4100
    const-string v3, "_data"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 4101
    .local v31, data:Ljava/lang/String;
    const-string v3, "_display_name"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4102
    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4104
    :cond_2
    invoke-static/range {v53 .. v53}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 4114
    .end local v31           #data:Ljava/lang/String;
    :pswitch_1
    new-instance v53, Landroid/content/ContentValues;

    .end local v53           #values:Landroid/content/ContentValues;
    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4116
    .restart local v53       #values:Landroid/content/ContentValues;
    const-string v3, "album_artist"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4117
    .local v27, albumartist:Ljava/lang/String;
    const-string v3, "compilation"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 4118
    .local v30, compilation:Ljava/lang/String;
    const-string v3, "compilation"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4122
    const-string v3, "artist"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    .line 4123
    .local v47, so:Ljava/lang/Object;
    if-nez v47, :cond_6

    const-string v8, ""

    .line 4124
    .local v8, s:Ljava/lang/String;
    :goto_2
    const-string v3, "artist"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4126
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 4129
    .local v13, artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v3, "_data"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4131
    .restart local v10       #path:Ljava/lang/String;
    monitor-enter v13

    .line 4132
    :try_start_0
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/Long;

    .line 4133
    .local v51, temp:Ljava/lang/Long;
    if-nez v51, :cond_7

    .line 4134
    const-string v5, "artists"

    const-string v6, "artist_key"

    const-string v7, "artist"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object v9, v8

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v28

    .line 4139
    .local v28, artistRowId:J
    :goto_3
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4140
    move-object/from16 v23, v8

    .line 4143
    .local v23, artist:Ljava/lang/String;
    const-string v3, "album"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    .line 4144
    if-nez v47, :cond_8

    const-string v8, ""

    .line 4145
    :goto_4
    const-string v3, "album"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4147
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v24, v0

    .line 4148
    .local v24, albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v24

    .line 4149
    const/16 v22, 0x0

    .line 4150
    .local v22, albumhash:I
    if-eqz v27, :cond_9

    .line 4151
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v22

    .line 4157
    :cond_3
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4158
    .local v20, cacheName:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    .end local v51           #temp:Ljava/lang/Long;
    check-cast v51, Ljava/lang/Long;

    .line 4159
    .restart local v51       #temp:Ljava/lang/Long;
    if-nez v51, :cond_b

    .line 4160
    const-string v16, "albums"

    const-string v17, "album_key"

    const-string v18, "album"

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v25, p2

    invoke-direct/range {v14 .. v25}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v17

    .line 4170
    .local v17, albumRowId:J
    :goto_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    sget-object v5, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v3, v5, :cond_5

    .line 4172
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumArtCaches:Ljava/util/HashMap;

    move-object/from16 v26, v0

    .line 4173
    .local v26, albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4174
    :try_start_2
    const-string v3, "<unknown>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 4175
    .local v38, isUnknown:Z
    if-nez v38, :cond_4

    .line 4176
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Boolean;

    .line 4177
    .local v50, td:Ljava/lang/Boolean;
    if-nez v50, :cond_4

    .line 4178
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/providers/media/MediaProvider;->albumArtExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4179
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4198
    .end local v50           #td:Ljava/lang/Boolean;
    :cond_4
    :goto_7
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4201
    .end local v26           #albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v38           #isUnknown:Z
    :cond_5
    :try_start_3
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4203
    const-string v3, "artist_id"

    move-wide/from16 v0, v28

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    const-string v3, "album_id"

    move-wide/from16 v0, v17

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    const-string v3, "title"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 4206
    .local v47, so:Ljava/lang/String;
    if-nez v47, :cond_d

    const-string v8, ""

    .line 4207
    :goto_8
    const-string v3, "title_key"

    invoke-static {v8}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    const-string v3, "title"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4211
    const-string v3, "title"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    const-string v3, "_data"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 4123
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v13           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v17           #albumRowId:J
    .end local v20           #cacheName:Ljava/lang/String;
    .end local v22           #albumhash:I
    .end local v23           #artist:Ljava/lang/String;
    .end local v24           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v28           #artistRowId:J
    .end local v51           #temp:Ljava/lang/Long;
    .local v47, so:Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 4137
    .restart local v8       #s:Ljava/lang/String;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v13       #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v51       #temp:Ljava/lang/Long;
    :cond_7
    :try_start_4
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .restart local v28       #artistRowId:J
    goto/16 :goto_3

    .line 4139
    .end local v28           #artistRowId:J
    .end local v51           #temp:Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 4144
    .restart local v23       #artist:Ljava/lang/String;
    .restart local v28       #artistRowId:J
    .restart local v51       #temp:Ljava/lang/Long;
    :cond_8
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 4152
    .restart local v22       #albumhash:I
    .restart local v24       #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_9
    if-eqz v30, :cond_a

    :try_start_5
    const-string v3, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4155
    :cond_a
    const/4 v3, 0x0

    const/16 v5, 0x2f

    invoke-virtual {v10, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v10, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v22

    goto/16 :goto_5

    .line 4163
    .restart local v20       #cacheName:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v17

    .restart local v17       #albumRowId:J
    goto/16 :goto_6

    .line 4184
    .restart local v26       #albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v38       #isUnknown:Z
    .restart local v50       #td:Ljava/lang/Boolean;
    :cond_c
    const/16 v19, 0x0

    .line 4191
    .local v19, albumart_uri:Landroid/net/Uri;
    :try_start_6
    sget-object v3, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v10

    .line 4194
    invoke-direct/range {v14 .. v19}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_7

    .line 4198
    .end local v19           #albumart_uri:Landroid/net/Uri;
    .end local v38           #isUnknown:Z
    .end local v50           #td:Ljava/lang/Boolean;
    :catchall_1
    move-exception v3

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 4201
    .end local v17           #albumRowId:J
    .end local v20           #cacheName:Ljava/lang/String;
    .end local v26           #albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v51           #temp:Ljava/lang/Long;
    :catchall_2
    move-exception v3

    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 4206
    .restart local v17       #albumRowId:J
    .restart local v20       #cacheName:Ljava/lang/String;
    .local v47, so:Ljava/lang/String;
    .restart local v51       #temp:Ljava/lang/Long;
    :cond_d
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 4220
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v13           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v17           #albumRowId:J
    .end local v20           #cacheName:Ljava/lang/String;
    .end local v22           #albumhash:I
    .end local v23           #artist:Ljava/lang/String;
    .end local v24           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v27           #albumartist:Ljava/lang/String;
    .end local v28           #artistRowId:J
    .end local v30           #compilation:Ljava/lang/String;
    .end local v47           #so:Ljava/lang/String;
    .end local v51           #temp:Ljava/lang/Long;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v5, ".3gp"

    const-string v6, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1, v5, v6}, Lcom/android/providers/media/MediaProvider;->ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v53

    .line 4223
    const-string v3, "_data"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 4225
    .restart local v31       #data:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4226
    invoke-static/range {v53 .. v53}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 4248
    .end local v31           #data:Ljava/lang/String;
    .restart local v10       #path:Ljava/lang/String;
    :cond_e
    move-object/from16 v32, v10

    .line 4252
    .local v32, datapath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v46

    .line 4256
    .local v46, sExtSd:Ljava/lang/String;
    if-eqz v32, :cond_10

    .line 4257
    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_f

    .line 4259
    const-wide/16 v44, 0x0

    goto/16 :goto_1

    .line 4261
    :cond_f
    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4262
    const-string v3, "volid"

    sget v5, Lcom/android/providers/media/MediaProvider;->mVolId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4268
    :cond_10
    :goto_9
    const-string v3, "alive"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4273
    if-eqz v10, :cond_11

    .line 4274
    move-object/from16 v0, v53

    invoke-static {v10, v0}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4277
    :cond_11
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4279
    const-wide/16 v44, 0x0

    .line 4280
    .restart local v44       #rowId:J
    const-string v3, "media_scanner_new_object_id"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    .line 4282
    .local v37, i:Ljava/lang/Integer;
    if-eqz v37, :cond_12

    .line 4283
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v44, v0

    .line 4284
    new-instance v54, Landroid/content/ContentValues;

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4285
    .end local v53           #values:Landroid/content/ContentValues;
    .local v54, values:Landroid/content/ContentValues;
    const-string v3, "media_scanner_new_object_id"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v53, v54

    .line 4288
    .end local v54           #values:Landroid/content/ContentValues;
    .restart local v53       #values:Landroid/content/ContentValues;
    :cond_12
    const-string v3, "title"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 4289
    .local v52, title:Ljava/lang/String;
    if-nez v52, :cond_13

    if-eqz v10, :cond_13

    .line 4290
    invoke-static {v10}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 4292
    :cond_13
    const-string v3, "title"

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    const-string v3, "mime_type"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4295
    .local v39, mimeType:Ljava/lang/String;
    const-string v3, "format"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    .line 4296
    .local v36, formatObject:Ljava/lang/Integer;
    if-nez v36, :cond_19

    const/16 v35, 0x0

    .line 4297
    .local v35, format:I
    :goto_a
    if-nez v35, :cond_14

    .line 4300
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4303
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_1a

    .line 4304
    const-string v3, "format"

    const v5, 0xba05

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Playlists/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "name"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4308
    const-string v3, "_data"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    const-string v3, "parent"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4320
    :cond_14
    :goto_b
    if-eqz v35, :cond_15

    .line 4321
    const-string v3, "format"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4322
    if-nez v39, :cond_15

    .line 4323
    invoke-static/range {v35 .. v35}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v39

    .line 4327
    :cond_15
    if-nez v39, :cond_16

    if-eqz v10, :cond_16

    .line 4330
    invoke-static {v10}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4332
    :cond_16
    if-eqz v39, :cond_17

    .line 4333
    const-string v3, "mime_type"

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4335
    if-nez p4, :cond_17

    invoke-static {v10}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 4336
    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v34

    .line 4337
    .local v34, fileType:I
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4338
    const/16 p4, 0x2

    .line 4348
    .end local v34           #fileType:I
    :cond_17
    :goto_c
    const-string v3, "media_type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4350
    const-wide/16 v5, 0x0

    cmp-long v3, v44, v5

    if-nez v3, :cond_25

    .line 4351
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_1f

    .line 4352
    const-string v3, "name"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 4353
    .local v40, name:Ljava/lang/String;
    if-nez v40, :cond_20

    if-nez v10, :cond_20

    .line 4355
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "no name was provided when inserting abstract playlist"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4264
    .end local v35           #format:I
    .end local v36           #formatObject:Ljava/lang/Integer;
    .end local v37           #i:Ljava/lang/Integer;
    .end local v39           #mimeType:Ljava/lang/String;
    .end local v40           #name:Ljava/lang/String;
    .end local v44           #rowId:J
    .end local v52           #title:Ljava/lang/String;
    :cond_18
    const-string v3, "volid"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 4296
    .restart local v36       #formatObject:Ljava/lang/Integer;
    .restart local v37       #i:Ljava/lang/Integer;
    .restart local v39       #mimeType:Ljava/lang/String;
    .restart local v44       #rowId:J
    .restart local v52       #title:Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v35

    goto/16 :goto_a

    .line 4313
    .restart local v35       #format:I
    :cond_1a
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "path is empty in insertFile()"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4317
    :cond_1b
    move-object/from16 v0, v39

    invoke-static {v10, v0}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_b

    .line 4339
    .restart local v34       #fileType:I
    :cond_1c
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4340
    const/16 p4, 0x3

    goto :goto_c

    .line 4341
    :cond_1d
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4342
    const/16 p4, 0x1

    goto :goto_c

    .line 4343
    :cond_1e
    invoke-static/range {v34 .. v34}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4344
    const/16 p4, 0x4

    goto :goto_c

    .line 4359
    .end local v34           #fileType:I
    :cond_1f
    if-nez v10, :cond_20

    .line 4362
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "no path was provided when inserting new file"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4368
    :cond_20
    if-eqz v10, :cond_21

    .line 4369
    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4370
    .local v33, file:Ljava/io/File;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4371
    const-string v3, "date_modified"

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4372
    const-string v3, "_size"

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4376
    .end local v33           #file:Ljava/io/File;
    :cond_21
    const-string v3, "parent"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v41

    .line 4377
    .local v41, parent:Ljava/lang/Long;
    if-nez v41, :cond_22

    .line 4378
    if-eqz v10, :cond_22

    .line 4379
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/providers/media/MediaProvider;->getParent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v42

    .line 4380
    .local v42, parentId:J
    const-string v3, "parent"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4383
    .end local v42           #parentId:J
    :cond_22
    const-string v3, "storage_id"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    .line 4384
    .local v48, storage:Ljava/lang/Integer;
    if-nez v48, :cond_23

    .line 4385
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v49

    .line 4386
    .local v49, storageId:I
    const-string v3, "storage_id"

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4389
    .end local v49           #storageId:I
    :cond_23
    const-string v3, "files"

    const-string v5, "date_modified"

    move-object/from16 v0, v53

    invoke-virtual {v4, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v44

    .line 4391
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    if-nez v3, :cond_24

    .line 4395
    :cond_24
    const-wide/16 v5, 0x0

    cmp-long v3, v44, v5

    if-eqz v3, :cond_1

    if-eqz p5, :cond_1

    .line 4396
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    goto/16 :goto_1

    .line 4399
    .end local v41           #parent:Ljava/lang/Long;
    .end local v48           #storage:Ljava/lang/Integer;
    :cond_25
    const-string v3, "files"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    move-object/from16 v0, v53

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 30
    .parameter "uri"
    .parameter "match"
    .parameter "initialValues"

    .prologue
    .line 4554
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    if-nez v4, :cond_0

    .line 4558
    :cond_0
    const/16 v4, 0x1f4

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 4559
    const-string v4, "volume"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 4560
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v25

    .line 4860
    :cond_1
    :goto_0
    return-object v25

    .line 4563
    :cond_2
    const/16 v23, 0x0

    .line 4564
    .local v23, genre:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 4565
    const-string v4, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4566
    const-string v4, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4569
    :cond_3
    const/16 v25, 0x0

    .line 4570
    .local v25, newUri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    .line 4571
    .local v5, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v5, :cond_4

    const/16 v4, 0x12c

    move/from16 v0, p2

    if-eq v0, v4, :cond_4

    const/16 v4, 0x2c1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 4581
    :cond_4
    const/16 v4, 0x12c

    move/from16 v0, p2

    if-eq v0, v4, :cond_5

    const/16 v4, 0x2c1

    move/from16 v0, p2

    if-ne v0, v4, :cond_6

    :cond_5
    const/4 v6, 0x0

    .line 4584
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    sparse-switch p2, :sswitch_data_0

    .line 4854
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4581
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    goto :goto_1

    .line 4586
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_0
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-wide v27

    .line 4587
    .local v27, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4588
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto :goto_0

    .line 4626
    .end local v27           #rowId:J
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_1
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->mbVolIdEnable:Z

    if-eqz v4, :cond_1

    .line 4630
    new-instance v10, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4632
    .local v10, values:Landroid/content/ContentValues;
    const-string v4, "volid_info"

    const-string v7, "name"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4634
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4636
    const-string v4, "content://media/external/files/volid"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4645
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v27           #rowId:J
    :sswitch_2
    iget-object v4, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v7, ".jpg"

    const-string v8, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/android/providers/media/MediaProvider;->ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v10

    .line 4647
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v4, "thumbnails"

    const-string v7, "name"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4648
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4649
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4657
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v27           #rowId:J
    :sswitch_3
    iget-object v4, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v7, ".jpg"

    const-string v8, "DCIM/.thumbnails"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/android/providers/media/MediaProvider;->ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v10

    .line 4659
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v4, "videothumbnails"

    const-string v7, "name"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4660
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4661
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4668
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v27           #rowId:J
    :sswitch_4
    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-wide v27

    .line 4669
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_7

    .line 4670
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 4673
    :cond_7
    if-eqz v23, :cond_1

    .line 4674
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 4681
    .end local v27           #rowId:J
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 4682
    .local v17, audioId:Ljava/lang/Long;
    new-instance v10, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4683
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v4, "audio_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4684
    const-string v4, "audio_genres_map"

    const-string v7, "genre_id"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4685
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4686
    move-object/from16 v0, p1

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4692
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v17           #audioId:Ljava/lang/Long;
    .end local v27           #rowId:J
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 4693
    .restart local v17       #audioId:Ljava/lang/Long;
    new-instance v10, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4694
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v4, "audio_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4695
    const-string v4, "audio_playlists_map"

    const-string v7, "playlist_id"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4697
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4698
    move-object/from16 v0, p1

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4704
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v17           #audioId:Ljava/lang/Long;
    .end local v27           #rowId:J
    :sswitch_7
    const-string v4, "audio_genres"

    const-string v7, "audio_id"

    move-object/from16 v0, p3

    invoke-virtual {v6, v4, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4705
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4706
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4712
    .end local v27           #rowId:J
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 4713
    .local v24, genreId:Ljava/lang/Long;
    new-instance v29, Landroid/content/ContentValues;

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4714
    .local v29, values:Landroid/content/ContentValues;
    const-string v4, "genre_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4717
    const/16 v19, 0x0

    .line 4718
    .local v19, cur:Landroid/database/Cursor;
    const-wide/16 v21, 0x0

    .line 4720
    .local v21, existId:J
    :try_start_0
    const-string v7, "audio_genres_map"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "_id"

    aput-object v9, v8, v4

    const-string v9, "audio_id=? AND genre_id=? "

    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v4, "audio_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 4733
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4735
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v21

    .line 4743
    :goto_2
    if-eqz v19, :cond_8

    .line 4745
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 4749
    :cond_8
    :goto_3
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-eqz v4, :cond_b

    .line 4750
    move-wide/from16 v27, v21

    .line 4756
    .restart local v27       #rowId:J
    :goto_4
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4757
    move-object/from16 v0, p1

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4737
    .end local v27           #rowId:J
    :cond_9
    const-wide/16 v21, 0x0

    goto :goto_2

    .line 4740
    :catch_0
    move-exception v4

    .line 4743
    if-eqz v19, :cond_8

    .line 4745
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 4743
    :catchall_0
    move-exception v4

    if-eqz v19, :cond_a

    .line 4745
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4

    .line 4752
    :cond_b
    const-string v4, "audio_genres_map"

    const-string v7, "genre_id"

    move-object/from16 v0, v29

    invoke-virtual {v6, v4, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .restart local v27       #rowId:J
    goto :goto_4

    .line 4763
    .end local v19           #cur:Landroid/database/Cursor;
    .end local v21           #existId:J
    .end local v24           #genreId:Ljava/lang/Long;
    .end local v27           #rowId:J
    .end local v29           #values:Landroid/content/ContentValues;
    :sswitch_9
    new-instance v10, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4764
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4765
    const/4 v11, 0x4

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object v8, v5

    move-object/from16 v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v27

    .line 4766
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4767
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4774
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v27           #rowId:J
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 4775
    .local v26, playlistId:Ljava/lang/Long;
    new-instance v10, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4776
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v4, "playlist_id"

    move-object/from16 v0, v26

    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4777
    const-string v4, "audio_playlists_map"

    const-string v7, "playlist_id"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4778
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4779
    move-object/from16 v0, p1

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4785
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v26           #playlistId:Ljava/lang/Long;
    .end local v27           #rowId:J
    :sswitch_b
    const/4 v15, 0x3

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v27

    .line 4786
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4787
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4795
    .end local v27           #rowId:J
    :sswitch_c
    iget-object v4, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    sget-object v7, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-ne v4, v7, :cond_c

    .line 4797
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v7, "no internal album art allowed"

    invoke-direct {v4, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4799
    :cond_c
    const/4 v10, 0x0

    .line 4802
    .restart local v10       #values:Landroid/content/ContentValues;
    :try_start_1
    iget-object v4, v5, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    const-string v7, ""

    const-string v8, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/android/providers/media/MediaProvider;->ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 4810
    :goto_5
    const-string v4, "album_art"

    const-string v7, "_data"

    invoke-virtual {v6, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    .line 4812
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4813
    move-object/from16 v0, p1

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4804
    .end local v27           #rowId:J
    :catch_1
    move-exception v20

    .line 4806
    .local v20, ex:Ljava/lang/IllegalStateException;
    move-object/from16 v10, p3

    goto :goto_5

    .line 4820
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v20           #ex:Ljava/lang/IllegalStateException;
    :sswitch_d
    const-string v4, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4823
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v7

    .line 4824
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-nez v4, :cond_d

    .line 4825
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 4827
    .local v18, context:Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/android/providers/media/MtpService;

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4830
    .end local v18           #context:Landroid/content/Context;
    :cond_d
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 4834
    :sswitch_f
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v27

    .line 4836
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4837
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4846
    .end local v27           #rowId:J
    :sswitch_10
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v27

    .line 4848
    .restart local v27       #rowId:J
    const-wide/16 v7, 0x0

    cmp-long v4, v27, v7

    if-lez v4, :cond_1

    .line 4849
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_0

    .line 4584
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x64 -> :sswitch_4
        0x66 -> :sswitch_5
        0x68 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6c -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x70 -> :sswitch_a
        0x77 -> :sswitch_c
        0xc8 -> :sswitch_b
        0xca -> :sswitch_3
        0x12c -> :sswitch_d
        0x2bc -> :sswitch_f
        0x2be -> :sswitch_10
        0x2c1 -> :sswitch_e
        0x2712 -> :sswitch_1
    .end sparse-switch
.end method

.method static isInternalMediaDatabaseName(Ljava/lang/String;)Lcom/android/providers/media/MediaProvider$STORAGE;
    .locals 1
    .parameter "name"

    .prologue
    .line 6682
    const-string v0, "internal.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6683
    sget-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    .line 6687
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    goto :goto_0
.end method

.method static isMediaDatabaseName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 6664
    const-string v1, "internal.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6678
    :cond_0
    :goto_0
    return v0

    .line 6667
    :cond_1
    const-string v1, "external.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6670
    const-string v1, "external-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6674
    const-string v1, "emmc-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6678
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMigrationed(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 15
    .parameter "_db"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 7772
    const-string v0, "CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY,_isUpdate TEXT,_isFOTA TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7778
    :try_start_0
    const-string v0, "ALTER TABLE history ADD _isFOTA TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7784
    :goto_0
    :try_start_1
    const-string v1, "history"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_isUpdate"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_isFOTA"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7786
    .local v8, cr:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7787
    const-string v0, "_isUpdate"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 7788
    .local v12, updateFlageId:I
    const-string v0, "_isFOTA"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 7789
    .local v10, fotaFlagId:I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 7790
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 7791
    .local v11, newCV:Landroid/content/ContentValues;
    const-string v0, "_isUpdate"

    const-string v1, "no"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7792
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->IS_FOTA:Z

    if-eqz v0, :cond_1

    .line 7794
    const-string v0, "_isFOTA"

    const-string v1, "yes"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7799
    :goto_1
    const-string v0, "history"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 7803
    .end local v11           #newCV:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7804
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7805
    const/4 v8, 0x0

    move v0, v13

    .line 7822
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v10           #fotaFlagId:I
    .end local v12           #updateFlageId:I
    :goto_2
    return v0

    .line 7779
    :catch_0
    move-exception v9

    .line 7780
    .local v9, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "_isFOTA already exists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7797
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cr:Landroid/database/Cursor;
    .restart local v10       #fotaFlagId:I
    .restart local v11       #newCV:Landroid/content/ContentValues;
    .restart local v12       #updateFlageId:I
    :cond_1
    :try_start_2
    const-string v0, "_isFOTA"

    const-string v1, "no"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 7820
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v10           #fotaFlagId:I
    .end local v11           #newCV:Landroid/content/ContentValues;
    .end local v12           #updateFlageId:I
    :catch_1
    move-exception v9

    .line 7821
    .restart local v9       #e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check history error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    .line 7822
    goto :goto_2

    .line 7810
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #cr:Landroid/database/Cursor;
    .restart local v10       #fotaFlagId:I
    .restart local v12       #updateFlageId:I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7811
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->markHistory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7812
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7813
    const/4 v8, 0x0

    move v0, v13

    .line 7814
    goto :goto_2

    .line 7817
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 7818
    const/4 v8, 0x0

    move v0, v14

    .line 7819
    goto :goto_2
.end method

.method private makeFakeData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "_db"

    .prologue
    .line 7831
    return-void
.end method

.method private makeThumbAsync(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 4
    .parameter "db"
    .parameter "path"
    .parameter "album_id"

    .prologue
    .line 5828
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    monitor-enter v3

    .line 5829
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5832
    monitor-exit v3

    .line 5864
    :goto_0
    return-void

    .line 5835
    :cond_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5836
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5838
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 5839
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 5840
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 5841
    iput-wide p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 5844
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 5857
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5858
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5859
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5862
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5863
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5836
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5859
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .parameter "d"

    .prologue
    .line 6154
    const/4 v7, 0x0

    .line 6155
    .local v7, albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 6156
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v10

    .line 6157
    .local v10, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-eqz v10, :cond_3

    .line 6158
    iget-object v7, v10, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumArtCaches:Ljava/util/HashMap;

    .line 6159
    monitor-enter v7

    .line 6160
    :try_start_0
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    .line 6161
    .local v16, td:Ljava/lang/Boolean;
    if-eqz v16, :cond_1

    .line 6163
    const/4 v15, 0x0

    monitor-exit v7

    .line 6323
    .end local v10           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v16           #td:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-object v15

    .line 6165
    .restart local v10       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v16       #td:Ljava/lang/Boolean;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6179
    .end local v10           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v16           #td:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/providers/media/MediaProvider;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    .line 6181
    .local v9, compressed:[B
    if-nez v9, :cond_4

    .line 6182
    const/4 v15, 0x0

    goto :goto_0

    .line 6165
    .end local v9           #compressed:[B
    .restart local v10       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6169
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 6172
    const/4 v15, 0x0

    goto :goto_0

    .line 6186
    .end local v10           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v9       #compressed:[B
    :cond_4
    const/4 v8, 0x0

    .line 6187
    .local v8, bm:Landroid/graphics/Bitmap;
    const/4 v13, 0x1

    .line 6224
    .local v13, need_to_recompress:Z
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/MediaProvider;->resizeThumb([B)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 6225
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez v1, :cond_6

    .line 6226
    :cond_5
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "invalid album art, error creating album thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_7

    .line 6230
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 6240
    :cond_7
    :goto_1
    if-eqz v13, :cond_8

    if-nez v8, :cond_8

    .line 6241
    const/4 v15, 0x0

    goto :goto_0

    .line 6232
    :catch_0
    move-exception v11

    .line 6233
    .local v11, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "denny.makeThumbInternal.resizeThumb  excepetion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6234
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 6235
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 6236
    .local v12, ex:Ljava/lang/OutOfMemoryError;
    const/4 v8, 0x0

    .line 6237
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "[MediaProvider][makeThumbInternal][OOM]0"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6244
    .end local v12           #ex:Ljava/lang/OutOfMemoryError;
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-nez v1, :cond_a

    .line 6248
    :try_start_3
    const-string v1, "albumthumb"

    invoke-static {v9, v1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    goto :goto_0

    .line 6249
    :catch_2
    move-exception v11

    .line 6250
    .local v11, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "denny.makeThumbInternal MemoryFile excepetion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6251
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 6323
    .end local v11           #e:Ljava/io/IOException;
    :cond_9
    :goto_2
    const/4 v15, 0x0

    goto :goto_0

    .line 6252
    :catch_3
    move-exception v12

    .line 6253
    .restart local v12       #ex:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "[MediaProvider][makeThumbInternal][OOM][1]"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 6269
    .end local v12           #ex:Ljava/lang/OutOfMemoryError;
    :cond_a
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    sget-object v6, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/media/MediaProvider;->getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;Lcom/android/providers/media/MediaProvider$STORAGE;)Landroid/net/Uri;

    move-result-object v14

    .line 6279
    .local v14, out:Landroid/net/Uri;
    if-eqz v14, :cond_c

    .line 6280
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9, v8}, Lcom/android/providers/media/MediaProvider;->writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 6281
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6282
    const-string v1, "r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 6291
    .local v15, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_b

    .line 6292
    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    .line 6294
    :try_start_5
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6295
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6318
    :cond_b
    if-eqz v8, :cond_0

    .line 6319
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 6295
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_6

    .line 6301
    .end local v14           #out:Landroid/net/Uri;
    .end local v15           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v12

    .line 6303
    .local v12, ex:Ljava/io/FileNotFoundException;
    :try_start_8
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "denny.makeThumbInternal.openFileHelper excepetion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6304
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 6318
    if-eqz v8, :cond_9

    .line 6319
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 6318
    .end local v12           #ex:Ljava/io/FileNotFoundException;
    .restart local v14       #out:Landroid/net/Uri;
    :cond_c
    if-eqz v8, :cond_9

    .line 6319
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 6306
    .end local v14           #out:Landroid/net/Uri;
    :catch_5
    move-exception v1

    .line 6318
    if-eqz v8, :cond_9

    .line 6319
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 6308
    :catch_6
    move-exception v12

    .line 6309
    .local v12, ex:Ljava/lang/OutOfMemoryError;
    :try_start_9
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "[MediaProvider][makeThumbInternal][OOM][2]"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 6318
    if-eqz v8, :cond_9

    .line 6319
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 6318
    .end local v12           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_2
    move-exception v1

    if-eqz v8, :cond_d

    .line 6319
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    throw v1
.end method

.method private static markHistory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "_db"

    .prologue
    const/4 v3, 0x0

    .line 7969
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7970
    .local v0, newCV:Landroid/content/ContentValues;
    const-string v1, "_isUpdate"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7972
    const-string v1, "history"

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7974
    return-void
.end method

.method private matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z
    .locals 7
    .parameter "req"
    .parameter "pid"
    .parameter "id"
    .parameter "gid"
    .parameter "isVideo"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2766
    cmp-long v4, p3, v5

    if-nez v4, :cond_2

    move v1, v2

    .line 2767
    .local v1, cancelAllOrigId:Z
    :goto_0
    cmp-long v4, p5, v5

    if-nez v4, :cond_3

    move v0, v2

    .line 2768
    .local v0, cancelAllGroupId:Z
    :goto_1
    iget v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    if-ne v4, p2, :cond_4

    if-nez v0, :cond_0

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_4

    :cond_0
    if-nez v1, :cond_1

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_4

    :cond_1
    iget-boolean v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v4, p7, :cond_4

    :goto_2
    return v2

    .end local v0           #cancelAllGroupId:Z
    .end local v1           #cancelAllOrigId:Z
    :cond_2
    move v1, v3

    .line 2766
    goto :goto_0

    .restart local v1       #cancelAllOrigId:Z
    :cond_3
    move v0, v3

    .line 2767
    goto :goto_1

    .restart local v0       #cancelAllGroupId:Z
    :cond_4
    move v2, v3

    .line 2768
    goto :goto_2
.end method

.method private movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 4
    .parameter "db"
    .parameter "playlist"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 5635
    if-ne p4, p5, :cond_0

    .line 5636
    const/4 v0, 0x0

    .line 5666
    :goto_0
    return v0

    .line 5638
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5640
    const/4 v0, 0x0

    .line 5641
    .local v0, numlines:I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5647
    if-ge p4, p5, :cond_1

    .line 5648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND play_order>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5651
    sub-int v2, p5, p4

    add-int/lit8 v0, v2, 0x1

    .line 5658
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5660
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5661
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 5663
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5666
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 5653
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND play_order<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5656
    sub-int v2, p4, p5

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 5666
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 15
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3964
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v13, "audio_playlists_map"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3966
    .local v4, helper:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v13, "audio_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3967
    .local v3, audioidcolidx:I
    const-string v13, "playlist_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3968
    .local v10, playlistididx:I
    const-string v13, "play_order"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3969
    .local v12, playorderidx:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3971
    .local v8, playlistId:J
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3972
    const/4 v7, 0x0

    .line 3974
    .local v7, numInserted:I
    :try_start_0
    move-object/from16 v0, p3

    array-length v6, v0

    .line 3975
    .local v6, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 3976
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3980
    aget-object v13, p3, v5

    const-string v14, "audio_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 3982
    .local v1, audioid:J
    invoke-virtual {v4, v3, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3983
    invoke-virtual {v4, v10, v8, v9}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3985
    aget-object v13, p3, v5

    const-string v14, "play_order"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 3987
    .local v11, playorder:I
    invoke-virtual {v4, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3988
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 3975
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3990
    .end local v1           #audioid:J
    .end local v11           #playorder:I
    :cond_0
    move v7, v6

    .line 3991
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3993
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3994
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 3996
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3997
    return v7

    .line 3993
    .end local v5           #i:I
    .end local v6           #len:I
    :catchall_0
    move-exception v13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3994
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v13
.end method

.method public static querySdcardId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 12
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 7607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7609
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 7613
    .local v2, cols1:[Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 7614
    .local v10, nRes:J
    const-string v1, "files"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7617
    .local v8, c1:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 7619
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7620
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 7626
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7627
    const/4 v8, 0x0

    .line 7632
    :cond_1
    :goto_0
    return-wide v10

    .line 7623
    :catch_0
    move-exception v9

    .line 7624
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MTP][updateImageInkInfobyInkTable][exception]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7626
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7627
    const/4 v8, 0x0

    .line 7628
    goto :goto_0

    .line 7626
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7627
    const/4 v8, 0x0

    throw v0
.end method

.method private queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .parameter "qb"
    .parameter "uri"
    .parameter "table"
    .parameter "column"
    .parameter "hasThumbnailId"

    .prologue
    .line 2776
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2777
    if-eqz p5, :cond_0

    .line 2780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id = "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2782
    const/4 v2, 0x1

    .line 2839
    :goto_0
    return v2

    .line 2784
    :cond_0
    const-string v2, "orig_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2786
    .local v15, origId:Ljava/lang/String;
    if-nez v15, :cond_1

    .line 2788
    const/4 v2, 0x1

    goto :goto_0

    .line 2791
    :cond_1
    const-string v2, "1"

    const-string v17, "blocking"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2792
    .local v14, needBlocking:Z
    const-string v2, "1"

    const-string v17, "cancel"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2793
    .local v10, cancelRequest:Z
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "thumbnails"

    const-string v19, "media"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 2797
    .local v16, origUri:Landroid/net/Uri;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->waitForThumbnailReady(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2798
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v17, "original media doesn\'t exist or it\'s canceled."

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    const/4 v2, 0x0

    goto :goto_0

    .line 2800
    :cond_2
    if-eqz v10, :cond_6

    .line 2801
    const-string v2, "group_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2802
    .local v12, groupId:Ljava/lang/String;
    const-string v2, "video"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2803
    .local v9, isVideo:Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2804
    .local v4, pid:I
    const-wide/16 v5, -0x1

    .line 2805
    .local v5, id:J
    const-wide/16 v7, -0x1

    .line 2808
    .local v7, gid:J
    :try_start_0
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2809
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2816
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2819
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    sget-object v19, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2821
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2823
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/MediaThumbRequest;

    .local v3, mtq:Lcom/android/providers/media/MediaThumbRequest;
    move-object/from16 v2, p0

    .line 2824
    invoke-direct/range {v2 .. v9}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2825
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2826
    :try_start_4
    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v2, v3, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2827
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 2828
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2830
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2833
    .end local v3           #mtq:Lcom/android/providers/media/MediaThumbRequest;
    .end local v13           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2810
    :catch_0
    move-exception v11

    .line 2812
    .local v11, ex:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2821
    .end local v11           #ex:Ljava/lang/NumberFormatException;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2828
    .restart local v3       #mtq:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v13       #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 2833
    .end local v3           #mtq:Lcom/android/providers/media/MediaThumbRequest;
    :cond_5
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2836
    .end local v4           #pid:I
    .end local v5           #id:J
    .end local v7           #gid:J
    .end local v9           #isVideo:Z
    .end local v12           #groupId:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz v15, :cond_7

    .line 2837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " = "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2839
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private static recoverOldTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 2395
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->isMigrationed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2396
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "[recoverOldTable]old tables have been preserved"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :goto_0
    return-void

    .line 2401
    :cond_0
    :try_start_0
    const-string v2, "CREATE TABLE IF NOT EXISTS images_old as SELECT * FROM images;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2425
    :goto_1
    :try_start_1
    const-string v2, "CREATE TABLE IF NOT EXISTS audio_meta_old as SELECT * FROM audio_meta;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2457
    :goto_2
    :try_start_2
    const-string v2, "CREATE TABLE IF NOT EXISTS video_old as SELECT * FROM video;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2495
    :goto_3
    :try_start_3
    const-string v2, "CREATE TABLE IF NOT EXISTS audio_playlists_old as SELECT * FROM audio_playlists;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2514
    :goto_4
    :try_start_4
    const-string v2, "CREATE TABLE IF NOT EXISTS audio_playlists_map_old as SELECT * FROM audio_playlists_map"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2535
    :goto_5
    :try_start_5
    const-string v2, "ALTER TABLE audio_meta_old ADD COLUMN volid INTEGER;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2536
    const-string v2, "ALTER TABLE audio_meta_old ADD COLUMN alive INTEGER;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2539
    const-string v2, "UPDATE audio_meta_old SET volid=0, alive=1 WHERE _data like \'content://drm/audio%\'"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2403
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2404
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[recoverOldTable]fail to recover images: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const-string v2, "CREATE TABLE IF NOT EXISTS images_old (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 2428
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2429
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[recoverOldTable]fail to recover audio_meta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    const-string v2, "CREATE TABLE IF NOT EXISTS audio_meta_old (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 2460
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2461
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[recoverOldTable]fail to recover video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    const-string v2, "CREATE TABLE IF NOT EXISTS video_old (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2498
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 2499
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[recoverOldTable]fail to recover audio_playlists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const-string v2, "CREATE TABLE IF NOT EXISTS audio_playlists_old (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2515
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 2516
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "[recoverOldTable]fail to recover audio_playlists_map:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2520
    :try_start_6
    const-string v2, "CREATE TABLE IF NOT EXISTS audio_playlists_map_old (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_5

    .line 2526
    :catch_6
    move-exception v1

    .line 2527
    .local v1, e1:Ljava/lang/Exception;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when try create audio_playlists_map_old table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private static recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2574
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2575
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2576
    const-string v0, "CREATE VIEW IF NOT EXISTS audio as SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2580
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from audio_meta where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2586
    return-void
.end method

.method private requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    .locals 11
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 4900
    iget-object v10, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v10

    .line 4901
    const/4 v8, 0x0

    .line 4903
    .local v8, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_0
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/media/MediaThumbRequest;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4905
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v0, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 4907
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4908
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4912
    .end local v7           #msg:Landroid/os/Message;
    :goto_0
    :try_start_2
    monitor-exit v10

    return-object v0

    .line 4909
    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catch_0
    move-exception v9

    move-object v0, v8

    .line 4910
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v9, t:Ljava/lang/Throwable;
    :goto_1
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4913
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    goto :goto_2

    .line 4909
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private static reserveAudioMeta(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .parameter "db"

    .prologue
    .line 7685
    const/4 v0, 0x0

    .line 7687
    .local v0, bSuccess:Z
    :try_start_0
    const-string v3, "CREATE TABLE IF NOT EXISTS am_backup (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,volid INTEGER,alive INTEGER,_data2 INTEGER UNIQUE NOT NULL,is_podcast INTEGER,bookmark INTEGER);"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7714
    const-string v3, "INSERT INTO am_backup SELECT * FROM audio_meta WHERE _data LIKE \'content://drm/audio%\' OR is_music = 1 OR is_alarm = 1"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7716
    const/4 v0, 0x1

    .line 7721
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[reserveAudioMeta]-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 7722
    .end local v0           #bSuccess:Z
    .local v1, bSuccess:I
    :goto_0
    return v1

    .line 7717
    .end local v1           #bSuccess:I
    .restart local v0       #bSuccess:Z
    :catch_0
    move-exception v2

    .line 7718
    .local v2, exception:Landroid/database/SQLException;
    :try_start_1
    const-string v3, "DROP TABLE IF EXISTS am_backup"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7719
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "[reserveAudioMeta] fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7721
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[reserveAudioMeta]-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 7722
    .restart local v1       #bSuccess:I
    goto :goto_0

    .line 7721
    .end local v1           #bSuccess:I
    .end local v2           #exception:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[reserveAudioMeta]-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 7722
    .restart local v1       #bSuccess:I
    goto :goto_0
.end method

.method private declared-synchronized resizeThumb([B)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "art"

    .prologue
    const/high16 v12, 0x4000

    const v11, 0x3fe66666

    const/4 v7, 0x0

    .line 6332
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v8, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    :cond_0
    move-object v2, v7

    .line 6427
    :goto_0
    monitor-exit p0

    return-object v2

    .line 6336
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    if-nez v8, :cond_2

    .line 6337
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    .line 6339
    :cond_2
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v8, :cond_3

    .line 6340
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v8, p0, Lcom/android/providers/media/MediaProvider;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6344
    :cond_3
    :try_start_2
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6345
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6346
    const/4 v8, 0x1

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6347
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6350
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_4

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v8, :cond_5

    :cond_4
    move-object v2, v7

    .line 6352
    goto :goto_0

    .line 6357
    :cond_5
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v9, 0x1c2

    if-le v8, v9, :cond_7

    iget v8, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize512:I

    iget v9, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    if-eq v8, v9, :cond_7

    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize512:I

    .line 6362
    .local v0, ALBUMSIZE:I
    :goto_1
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    cmpl-float v8, v8, v11

    if-gtz v8, :cond_6

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    cmpl-float v8, v8, v11

    if-lez v8, :cond_8

    .line 6363
    :cond_6
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6364
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6365
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 6420
    .end local v0           #ALBUMSIZE:I
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 6422
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thumbnail resize failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    move-object v2, v7

    .line 6427
    goto/16 :goto_0

    .line 6357
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    :try_start_4
    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    goto :goto_1

    .line 6371
    .restart local v0       #ALBUMSIZE:I
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6372
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6373
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6376
    .local v1, bitmapOrg:Landroid/graphics/Bitmap;
    int-to-float v9, v0

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v8, v10, :cond_9

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_3
    int-to-float v8, v8

    div-float v6, v9, v8

    .line 6379
    .local v6, scale:F
    iget v8, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    if-ne v0, v8, :cond_a

    .line 6380
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6381
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6387
    :goto_4
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 6389
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6390
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v9, v0

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    int-to-float v10, v0

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    div-float/2addr v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6394
    const/4 v2, 0x0

    .line 6396
    .local v2, bm:Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/providers/media/MediaProvider;->mAlbumSize:I

    if-ne v0, v8, :cond_b

    .line 6397
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 6398
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 6399
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6403
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6416
    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6417
    const/4 v5, 0x0

    .line 6419
    goto/16 :goto_0

    .line 6376
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_9
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_3

    .line 6383
    .restart local v6       #scale:F
    :cond_a
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas512:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6384
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum512:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 6423
    .end local v0           #ALBUMSIZE:I
    .end local v1           #bitmapOrg:Landroid/graphics/Bitmap;
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #scale:F
    :catch_1
    move-exception v4

    .line 6424
    .local v4, ex:Ljava/lang/OutOfMemoryError;
    :try_start_5
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v9, "[MediaProvider][resizeThumb][OOM]"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 6332
    .end local v4           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 6406
    .restart local v0       #ALBUMSIZE:I
    .restart local v1       #bitmapOrg:Landroid/graphics/Bitmap;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #scale:F
    :cond_b
    :try_start_6
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas512:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 6407
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas512:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMatrix:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 6408
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mTransCanvas512:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum512:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6412
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mSquareAlbum512:Landroid/graphics/Bitmap;

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    goto :goto_5
.end method

.method private static sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 14
    .parameter "db"
    .parameter "fromVersion"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 2553
    const-string v1, "audio_meta"

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2555
    .local v8, c1:Landroid/database/Cursor;
    const-string v1, "audio_meta"

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "count(distinct _data)"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2557
    .local v9, c2:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2558
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2559
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2560
    .local v10, num1:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2561
    .local v11, num2:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2562
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2563
    if-eq v10, v11, :cond_0

    .line 2564
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_meta._data column is not unique while upgrading from schema "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    const-string v0, "DELETE FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2569
    :cond_0
    return-void
.end method

.method private sendObjectAdded(J)V
    .locals 4
    .parameter "objectHandle"

    .prologue
    .line 3786
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 3787
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3789
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v3, p1

    invoke-interface {v1, v3}, Lcom/android/providers/media/IMtpService;->sendObjectAdded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3795
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 3798
    return-void

    .line 3790
    :catch_0
    move-exception v0

    .line 3791
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in sendObjectAdded"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3792
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 3795
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendObjectRemoved(J)V
    .locals 4
    .parameter "objectHandle"

    .prologue
    .line 3804
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 3805
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3807
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v3, p1

    invoke-interface {v1, v3}, Lcom/android/providers/media/IMtpService;->sendObjectRemoved(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3813
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 3816
    return-void

    .line 3808
    :catch_0
    move-exception v0

    .line 3809
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in sendObjectRemoved"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3810
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 3813
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendUpgradeComplete(Landroid/net/Uri;)V
    .locals 8
    .parameter "_uri"

    .prologue
    .line 7913
    if-nez p1, :cond_1

    .line 7964
    :cond_0
    :goto_0
    return-void

    .line 7915
    :cond_1
    const/4 v5, 0x0

    .line 7916
    .local v5, vol:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7922
    .local v4, uriStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7924
    const-string v5, "internal"

    .line 7926
    goto :goto_0

    .line 7927
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7931
    const-string v5, "external"

    .line 7933
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    const-string v7, "internal"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7934
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 7937
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/providers/media/MediaDBMigrationService;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7938
    .local v3, mapPlaylistIntent:Landroid/content/Intent;
    const-string v6, "com.htc.providers.media.MAP_PLAYLIST"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7939
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7943
    if-nez v1, :cond_3

    .line 7944
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "[recoverOldTable]cannot get database"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7949
    :cond_3
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->isMigrationed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7953
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->markHistory(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7960
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 7961
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7962
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I
    .locals 26
    .parameter "db"
    .parameter "handle"
    .parameter "values"

    .prologue
    .line 4431
    const-wide/16 v22, 0x0

    .line 4432
    .local v22, playlistId:J
    const-string v4, "files"

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4436
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4437
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 4438
    .local v18, mediaType:I
    const/4 v3, 0x4

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    .line 4440
    const/4 v3, 0x0

    .line 4445
    if-eqz v15, :cond_0

    .line 4446
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4497
    .end local v18           #mediaType:I
    :cond_0
    :goto_0
    return v3

    .line 4442
    .restart local v18       #mediaType:I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v22

    .line 4445
    .end local v18           #mediaType:I
    :cond_2
    if-eqz v15, :cond_3

    .line 4446
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4449
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-nez v3, :cond_5

    .line 4450
    const/4 v3, 0x0

    goto :goto_0

    .line 4445
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_4

    .line 4446
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 4454
    :cond_5
    const-string v3, "audio_playlists_map"

    const-string v4, "playlist_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4458
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    .line 4459
    .local v16, count:I
    const/4 v11, 0x0

    .line 4460
    .local v11, added:I
    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v25, v0

    .line 4461
    .local v25, valuesList:[Landroid/content/ContentValues;
    const/16 v17, 0x0

    .local v17, i:I
    move v12, v11

    .end local v11           #added:I
    .local v12, added:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 4463
    const-wide/16 v13, 0x0

    .line 4464
    .local v13, audioId:J
    aget-object v3, p3, v17

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 4465
    .local v20, objectId:J
    const-string v4, "files"

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mMediaTableColumns:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4469
    if-eqz v15, :cond_7

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4470
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v18

    .line 4471
    .restart local v18       #mediaType:I
    const/4 v3, 0x2

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    .line 4478
    if-eqz v15, :cond_c

    .line 4479
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move v11, v12

    .line 4461
    .end local v12           #added:I
    .end local v18           #mediaType:I
    .restart local v11       #added:I
    :goto_2
    add-int/lit8 v17, v17, 0x1

    move v12, v11

    .end local v11           #added:I
    .restart local v12       #added:I
    goto :goto_1

    .line 4475
    .restart local v18       #mediaType:I
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v13

    .line 4478
    .end local v18           #mediaType:I
    :cond_7
    if-eqz v15, :cond_8

    .line 4479
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4482
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-eqz v3, :cond_c

    .line 4483
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 4484
    .local v24, v:Landroid/content/ContentValues;
    const-string v3, "playlist_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4485
    const-string v3, "audio_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4486
    const-string v3, "play_order"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4487
    add-int/lit8 v11, v12, 0x1

    .end local v12           #added:I
    .restart local v11       #added:I
    aput-object v24, v25, v12

    goto :goto_2

    .line 4478
    .end local v11           #added:I
    .end local v24           #v:Landroid/content/ContentValues;
    .restart local v12       #added:I
    :catchall_1
    move-exception v3

    if-eqz v15, :cond_9

    .line 4479
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    .line 4490
    .end local v13           #audioId:J
    .end local v20           #objectId:J
    :cond_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_b

    .line 4493
    new-array v0, v12, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 4494
    .local v19, newValues:[Landroid/content/ContentValues;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4495
    move-object/from16 v25, v19

    .line 4497
    .end local v19           #newValues:[Landroid/content/ContentValues;
    :cond_b
    const-string v3, "external"

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    goto/16 :goto_0

    .restart local v13       #audioId:J
    .restart local v20       #objectId:J
    :cond_c
    move v11, v12

    .end local v12           #added:I
    .restart local v11       #added:I
    goto :goto_2
.end method

.method private static setPruneThumbsFlag()V
    .locals 4

    .prologue
    .line 7352
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.media/prune_thumb"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7353
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7355
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7360
    :cond_0
    :goto_0
    return-void

    .line 7356
    :catch_0
    move-exception v0

    .line 7357
    .local v0, ex:Ljava/io/IOException;
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "File creation failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stopScan()V
    .locals 1

    .prologue
    .line 8008
    sget-object v0, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    if-nez v0, :cond_0

    .line 8015
    :goto_0
    return-void

    .line 8013
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider;->scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    invoke-virtual {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->stopScan()V

    goto :goto_0
.end method

.method private static updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 2596
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2598
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2599
    .local v2, columns:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 2601
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 2602
    .local v11, idColumnIndex:I
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 2604
    .local v10, dataColumnIndex:I
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    .line 2606
    .local v12, rowId:[Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2607
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2610
    .local v9, data:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 2612
    if-eqz v9, :cond_0

    .line 2613
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2614
    .local v13, values:Landroid/content/ContentValues;
    invoke-static {v9, v13}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2617
    const-string v0, "_id=?"

    invoke-virtual {p0, p1, v13, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2624
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataColumnIndex:I
    .end local v11           #idColumnIndex:I
    .end local v12           #rowId:[Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2628
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2620
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #data:Ljava/lang/String;
    .restart local v10       #dataColumnIndex:I
    .restart local v11       #idColumnIndex:I
    .restart local v12       #rowId:[Ljava/lang/String;
    :cond_0
    :try_start_3
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null data at id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2624
    .end local v9           #data:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2626
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2628
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2630
    return-void
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V
    .locals 11
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 1059
    if-eqz p2, :cond_0

    const/16 v8, 0x198

    if-ne p2, v8, :cond_1

    .line 1060
    :cond_0
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/providers/media/MediaProvider;->IS_FOTA:Z

    .line 1068
    :goto_0
    const/16 v8, 0x198

    if-eq p3, v8, :cond_2

    .line 1069
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal update request. Got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x198

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 1062
    :cond_1
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/providers/media/MediaProvider;->IS_FOTA:Z

    goto :goto_0

    .line 1072
    :cond_2
    if-le p2, p3, :cond_3

    .line 1073
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Did you forget to wipe data?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 1079
    :cond_3
    const/4 v0, 0x0

    .line 1090
    .local v0, bReserveAudioMeta:Z
    const/16 v8, 0x3f

    if-lt p2, v8, :cond_5

    const/16 v8, 0x54

    if-lt p2, v8, :cond_4

    const/16 v8, 0x59

    if-le p2, v8, :cond_5

    :cond_4
    const/16 v8, 0x5c

    if-lt p2, v8, :cond_7

    const/16 v8, 0x5e

    if-gt p2, v8, :cond_7

    .line 1098
    :cond_5
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->reserveAudioMeta(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 1104
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recoverOldTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_1
    const/16 p2, 0x3f

    .line 1111
    const-string v8, "DROP TABLE IF EXISTS images"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1112
    const-string v8, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1113
    const-string v8, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    const-string v8, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1115
    const-string v8, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    const-string v8, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1117
    const-string v8, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    const-string v8, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v8, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1120
    const-string v8, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    const-string v8, "DROP VIEW IF EXISTS artists_albums_map"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    const-string v8, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1123
    const-string v8, "DROP TABLE IF EXISTS audio_genres"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1124
    const-string v8, "DROP TABLE IF EXISTS audio_genres_map"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    const-string v8, "DROP TRIGGER IF EXISTS audio_genres_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    const-string v8, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v8, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    const-string v8, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string v8, "DROP TRIGGER IF EXISTS albumart_cleanup1"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v8, "DROP TRIGGER IF EXISTS albumart_cleanup2"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const-string v8, "DROP TABLE IF EXISTS video"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string v8, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1133
    const-string v8, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1134
    const-string v8, "DROP TRIGGER IF EXISTS images_objects_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1135
    const-string v8, "DROP TRIGGER IF EXISTS audio_objects_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    const-string v8, "DROP TRIGGER IF EXISTS video_objects_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1137
    const-string v8, "DROP TRIGGER IF EXISTS playlists_objects_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1139
    const-string v8, "CREATE TABLE IF NOT EXISTS images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1162
    const-string v8, "CREATE INDEX IF NOT EXISTS mini_thumb_magic_index on images(mini_thumb_magic);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1164
    const-string v8, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    const-string v8, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1180
    const-string v8, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1182
    const-string v8, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1188
    const-string v8, "CREATE TABLE IF NOT EXISTS audio_meta (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string v8, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist TEXT NOT NULL);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1221
    const-string v8, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album TEXT NOT NULL);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v8, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1232
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1237
    const-string v8, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1244
    const-string v8, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    const-string v8, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1262
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v8, p1, :cond_6

    .line 1265
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON audio_meta BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1272
    const-string v8, "CREATE TABLE IF NOT EXISTS audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1278
    const-string v8, "CREATE TABLE IF NOT EXISTS audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1285
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    const-string v8, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    const-string v8, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1308
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1315
    const-string v8, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1321
    const-string v8, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    :cond_6
    const-string v8, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1355
    const-string v8, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    :cond_7
    const/16 v8, 0x40

    if-ge p2, v8, :cond_8

    .line 1367
    const-string v8, "CREATE INDEX IF NOT EXISTS sort_index on images(datetaken ASC, _id ASC);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    :cond_8
    const/16 v8, 0x41

    if-ge p2, v8, :cond_9

    .line 1376
    const-string v8, "CREATE INDEX IF NOT EXISTS titlekey_index on audio_meta(title_key);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1382
    :cond_9
    const/16 v8, 0x43

    if-ge p2, v8, :cond_a

    .line 1384
    const-string v8, "CREATE INDEX IF NOT EXISTS albumkey_index on albums(album_key);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1385
    const-string v8, "CREATE INDEX IF NOT EXISTS artistkey_index on artists(artist_key);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1388
    :cond_a
    const/16 v8, 0x44

    if-ge p2, v8, :cond_b

    .line 1390
    const-string v8, "ALTER TABLE video ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1391
    const-string v8, "ALTER TABLE video ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1397
    :cond_b
    const/16 v8, 0x45

    if-ge p2, v8, :cond_c

    .line 1398
    const-string v8, "images"

    invoke-static {p0, v8}, Lcom/android/providers/media/MediaProvider;->updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1401
    :cond_c
    const/16 v8, 0x46

    if-ge p2, v8, :cond_d

    .line 1403
    const-string v8, "ALTER TABLE video ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    :cond_d
    const/16 v8, 0x47

    if-ge p2, v8, :cond_e

    .line 1413
    const-string v8, "UPDATE audio_meta SET date_modified=0 WHERE _id IN (SELECT _id FROM audio where mime_type=\'audio/mp4\' AND artist=\'<unknown>\' AND album=\'<unknown>\');"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1420
    :cond_e
    const/16 v8, 0x48

    if-ge p2, v8, :cond_f

    .line 1422
    const-string v8, "ALTER TABLE audio_meta ADD COLUMN is_podcast INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v8, "UPDATE audio_meta SET is_podcast=1 WHERE _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1424
    const-string v8, "UPDATE audio_meta SET is_music=0 WHERE is_podcast=1 AND _data NOT LIKE \'%/music/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1426
    const-string v8, "ALTER TABLE audio_meta ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1432
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1438
    const-string v8, "ALTER TABLE images ADD COLUMN favorite INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1439
    const-string v8, "ALTER TABLE images ADD COLUMN lock_screen INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    const-string v8, "ALTER TABLE video ADD COLUMN favorite INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1448
    :cond_f
    const/16 v8, 0x49

    if-ge p2, v8, :cond_10

    .line 1452
    const-string v8, "UPDATE audio_meta SET is_music=1 WHERE is_music=0 AND _data LIKE \'%/music/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1454
    const-string v8, "UPDATE audio_meta SET is_ringtone=1 WHERE is_ringtone=0 AND _data LIKE \'%/ringtones/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1456
    const-string v8, "UPDATE audio_meta SET is_notification=1 WHERE is_notification=0 AND _data LIKE \'%/notifications/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1458
    const-string v8, "UPDATE audio_meta SET is_alarm=1 WHERE is_alarm=0 AND _data LIKE \'%/alarms/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    const-string v8, "UPDATE audio_meta SET is_podcast=1 WHERE is_podcast=0 AND _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1464
    :cond_10
    const/16 v8, 0x4a

    if-ge p2, v8, :cond_11

    .line 1469
    const-string v8, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio  WHERE alive=1 ORDER BY title_key;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1473
    const-string v8, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM artist_info WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1519
    :cond_11
    const/16 v8, 0x4b

    if-ge p2, v8, :cond_12

    .line 1522
    const-string v8, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1523
    const-string v8, "DELETE FROM albums"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1526
    :cond_12
    const/16 v8, 0x4c

    if-ge p2, v8, :cond_13

    .line 1529
    const-string v8, "UPDATE audio_meta SET title_key=REPLACE(title_key,x\'081D08C29F081D\',x\'081D\') WHERE title_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1532
    const-string v8, "UPDATE albums SET album_key=REPLACE(album_key,x\'081D08C29F081D\',x\'081D\') WHERE album_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1535
    const-string v8, "UPDATE artists SET artist_key=REPLACE(artist_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1544
    :cond_13
    const/16 v8, 0x4d

    if-ge p2, v8, :cond_14

    .line 1546
    const-string v8, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1555
    const-string v8, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    const-string v8, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1570
    :cond_14
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v8, p1, :cond_15

    if-eqz p2, :cond_15

    const/16 v8, 0x4d

    if-ge p2, v8, :cond_15

    .line 1572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1574
    .local v5, s:J
    const-string v8, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1575
    const-string v8, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v8, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1587
    const-string v8, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1589
    const-string v8, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1595
    const-string v8, "UPDATE images SET mini_thumb_magic=\'\'"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1598
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->setPruneThumbsFlag()V

    .line 1611
    .end local v5           #s:J
    :cond_15
    const/16 v8, 0x4e

    if-ge p2, v8, :cond_16

    .line 1614
    const-string v8, "UPDATE video SET date_modified=0;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1624
    :cond_16
    const/16 v8, 0x4f

    if-ge p2, v8, :cond_17

    sget-object v8, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    if-eqz v8, :cond_17

    .line 1631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/albumthumbs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1632
    .local v4, oldthumbspath:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Android/data/com.android.providers.media/albumthumbs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1633
    .local v3, newthumbspath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v7, thumbsfolder:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1636
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v2, newthumbsfolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1638
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1640
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE album_art SET _data=REPLACE(_data, \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1646
    .end local v2           #newthumbsfolder:Ljava/io/File;
    .end local v3           #newthumbspath:Ljava/lang/String;
    .end local v4           #oldthumbspath:Ljava/lang/String;
    .end local v7           #thumbsfolder:Ljava/io/File;
    :cond_17
    const/16 v8, 0x50

    if-ge p2, v8, :cond_18

    .line 1648
    const-string v8, "UPDATE images SET date_modified=0;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1652
    :cond_18
    const/16 v8, 0x51

    if-ge p2, v8, :cond_19

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq v8, p1, :cond_19

    .line 1661
    const-string v8, "UPDATE audio_playlists SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    const-string v8, "UPDATE images SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1663
    const-string v8, "UPDATE video SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    const-string v8, "UPDATE videothumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1665
    const-string v8, "UPDATE thumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1666
    const-string v8, "UPDATE album_art SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    const-string v8, "UPDATE audio_meta SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1669
    const-string v8, "DELETE FROM audio_playlists WHERE _data IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1670
    const-string v8, "DELETE FROM images WHERE _data IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1671
    const-string v8, "DELETE FROM video WHERE _data IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1672
    const-string v8, "DELETE FROM videothumbnails WHERE _data IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1673
    const-string v8, "DELETE FROM thumbnails WHERE _data IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1674
    const-string v8, "DELETE FROM audio_meta WHERE _data  IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1675
    const-string v8, "DELETE FROM album_art WHERE _data  IS \'////\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    const-string v8, "UPDATE audio_meta SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1680
    const-string v8, "UPDATE audio_playlists SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1682
    const-string v8, "UPDATE images SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1684
    const-string v8, "UPDATE video SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1686
    const-string v8, "UPDATE videothumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1688
    const-string v8, "UPDATE thumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1690
    const-string v8, "UPDATE album_art SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1715
    const-string v8, "DELETE from albums"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1716
    const-string v8, "DELETE from artists"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1717
    const-string v8, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1720
    :cond_19
    const/16 v8, 0x52

    if-ge p2, v8, :cond_1a

    .line 1722
    const-string v8, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1723
    const-string v8, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1732
    :cond_1a
    const/16 v8, 0x57

    if-ge p2, v8, :cond_1b

    .line 1736
    const-string v8, "CREATE INDEX IF NOT EXISTS title_idx on audio_meta(title);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1737
    const-string v8, "CREATE INDEX IF NOT EXISTS artist_idx on artists(artist);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1738
    const-string v8, "CREATE INDEX IF NOT EXISTS album_idx on albums(album);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1741
    :cond_1b
    const/16 v8, 0x58

    if-ge p2, v8, :cond_1c

    .line 1744
    const-string v8, "DROP TRIGGER IF EXISTS albums_update1;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1745
    const-string v8, "DROP TRIGGER IF EXISTS albums_update2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    const-string v8, "DROP TRIGGER IF EXISTS albums_update3;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1747
    const-string v8, "DROP TRIGGER IF EXISTS albums_update4;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1748
    const-string v8, "DROP TRIGGER IF EXISTS artist_update1;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1749
    const-string v8, "DROP TRIGGER IF EXISTS artist_update2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1750
    const-string v8, "DROP TRIGGER IF EXISTS artist_update3;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1751
    const-string v8, "DROP TRIGGER IF EXISTS artist_update4;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1752
    const-string v8, "DROP VIEW IF EXISTS album_artists;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1753
    const-string v8, "CREATE INDEX IF NOT EXISTS album_id_idx on audio_meta(album_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1754
    const-string v8, "CREATE INDEX IF NOT EXISTS artist_id_idx on audio_meta(artist_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1757
    const-string v8, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1768
    :cond_1c
    const/16 v8, 0x59

    if-ge p2, v8, :cond_1e

    .line 1772
    const-string v8, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1773
    const-string v8, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1777
    const-string v8, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music>=1 GROUP BY artist_key;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1784
    const-string v8, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music>=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1796
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x92

    if-eq v8, v9, :cond_1d

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x98

    if-eq v8, v9, :cond_1d

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_1d

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_1e

    .line 1800
    :cond_1d
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->addDefaultPlaylist(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1835
    :cond_1e
    sget-boolean v8, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    .line 1837
    const-string v8, "DROP TABLE IF EXISTS htcink"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1838
    const-string v8, "DROP TRIGGER IF EXISTS htcink_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1841
    const-string v8, "CREATE TABLE IF NOT EXISTS htcink (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,format INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,is_drm INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1857
    const-string v8, "CREATE TRIGGER IF NOT EXISTS htcink_cleanup DELETE ON images BEGIN SELECT _DELETE_FILE(old._data || \'.htcink\');END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1863
    :cond_1f
    const/16 v8, 0x5b

    if-ge p2, v8, :cond_20

    .line 1865
    const-string v8, "DROP INDEX IF EXISTS mini_thumb_magic_index"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1868
    const-string v8, "CREATE INDEX IF NOT EXISTS image_bucket_index ON images(bucket_id, datetaken)"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1869
    const-string v8, "CREATE INDEX IF NOT EXISTS video_bucket_index ON video(bucket_id, datetaken)"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1875
    :cond_20
    const/16 v8, 0x64

    if-gt p2, v8, :cond_26

    .line 1877
    const-string v8, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1878
    const-string v8, "DROP TABLE IF EXISTS files"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1879
    const-string v8, "DROP TRIGGER IF EXISTS images_objects_cleanup;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1880
    const-string v8, "DROP TRIGGER IF EXISTS audio_objects_cleanup;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1881
    const-string v8, "DROP TRIGGER IF EXISTS video_objects_cleanup;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1882
    const-string v8, "DROP TRIGGER IF EXISTS playlists_objects_cleanup;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1883
    const-string v8, "DROP TRIGGER IF EXISTS files_cleanup_images;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1884
    const-string v8, "DROP TRIGGER IF EXISTS files_cleanup_audio;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1885
    const-string v8, "DROP TRIGGER IF EXISTS files_cleanup_video;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1886
    const-string v8, "DROP TRIGGER IF EXISTS files_cleanup_playlists;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1887
    const-string v8, "DROP TRIGGER IF EXISTS media_cleanup;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1892
    const-string v8, "CREATE TABLE files (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT,_size INTEGER,format INTEGER,parent INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,title_key TEXT,artist_id INTEGER,album_id INTEGER,composer TEXT,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,is_podcast INTEGER,album_artist TEXT,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,name TEXT,media_type INTEGER,old_id INTEGER,volid INTEGER,alive INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1967
    const-string v8, "ALTER TABLE files ADD COLUMN favorite INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1968
    const-string v8, "ALTER TABLE files ADD COLUMN lock_screen INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1972
    const-string v8, "CREATE INDEX path_index ON files(_data);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1973
    const-string v8, "CREATE INDEX media_type_index ON files(media_type);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1989
    const-string v8, "INSERT INTO files (_id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,volid,alive,old_id,media_type) SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,volid,alive,_id,2 FROM audio_meta;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1993
    const-string v8, "INSERT INTO files (_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,volid,alive,favorite,lock_screen,old_id,media_type) SELECT _data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,volid,alive,favorite,lock_screen,_id,1 FROM images;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1995
    const-string v8, "INSERT INTO files (_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,volid,alive,favorite,old_id,media_type) SELECT _data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,volid,alive,favorite,_id,3 FROM video;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2002
    const-string v8, "CREATE TABLE IF NOT EXISTS volid_info (volid INTEGER,date_modified INTEGER);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2007
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_21

    .line 2009
    const-string v8, "DELETE FROM files WHERE volid != 0 AND volid NOT IN (SELECT volid from volid_info);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    :cond_21
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_22

    .line 2017
    const-string v8, "INSERT INTO files (_data,name,date_added,date_modified,old_id,media_type) SELECT _data,name,date_added,date_modified,_id,4 FROM audio_playlists;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2031
    :cond_22
    const-string v8, "DROP TABLE IF EXISTS images"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2032
    const-string v8, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2033
    const-string v8, "DROP TABLE IF EXISTS video"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2034
    const-string v8, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2039
    const-string v8, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,volid,alive,favorite,lock_screen FROM files WHERE media_type=1;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2043
    const-string v8, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,volid,alive FROM files WHERE media_type=2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2048
    const-string v8, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,volid,alive,favorite FROM files WHERE media_type=3;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2053
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_23

    .line 2055
    const-string v8, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified FROM files WHERE media_type=4;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2062
    :cond_23
    const-string v8, "CREATE INDEX tmp ON files(old_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2066
    const-string v8, "UPDATE thumbnails SET image_id = (SELECT _id FROM files WHERE files.old_id = thumbnails.image_id AND files.media_type = 1);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2070
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_24

    .line 2074
    const-string v8, "UPDATE audio_genres_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_genres_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2077
    const-string v8, "UPDATE audio_playlists_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2080
    const-string v8, "UPDATE audio_playlists_map SET playlist_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.playlist_id AND files.media_type = 4);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2086
    :cond_24
    const-string v8, "UPDATE videothumbnails SET video_id = (SELECT _id FROM files WHERE files.old_id = videothumbnails.video_id AND files.media_type = 3);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2092
    const-string v8, "DROP INDEX tmp;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2095
    const-string v8, "DROP INDEX IF EXISTS title_idx"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2096
    const-string v8, "DROP INDEX IF EXISTS album_id_idx"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2097
    const-string v8, "DROP INDEX IF EXISTS image_bucket_index"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2098
    const-string v8, "DROP INDEX IF EXISTS video_bucket_index"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2099
    const-string v8, "DROP INDEX IF EXISTS sort_index"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2100
    const-string v8, "DROP INDEX IF EXISTS titlekey_index"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2101
    const-string v8, "DROP INDEX IF EXISTS artist_id_idx"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2102
    const-string v8, "CREATE INDEX title_idx ON files(title);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2103
    const-string v8, "CREATE INDEX album_id_idx ON files(album_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2104
    const-string v8, "CREATE INDEX bucket_index ON files(bucket_id, datetaken);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2105
    const-string v8, "CREATE INDEX sort_index ON files(media_type, datetaken ASC, _id ASC);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2106
    const-string v8, "CREATE INDEX titlekey_index ON files(title_key);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2107
    const-string v8, "CREATE INDEX artist_id_idx ON files(artist_id);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2110
    const-string v8, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2111
    const-string v8, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2112
    const-string v8, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2113
    const-string v8, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2114
    const-string v8, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2116
    const-string v8, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON files WHEN old.media_type = 1 BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2123
    const-string v8, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON files WHEN old.media_type = 3 BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2129
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_26

    .line 2131
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON files WHEN old.media_type = 2 BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2138
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON files WHEN old.media_type = 4 BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2145
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from files where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2154
    const/16 v8, 0x3f

    if-eq p2, v8, :cond_25

    .line 2158
    :try_start_1
    const-string v8, "DELETE FROM audio_playlists_old;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2159
    const-string v8, "DELETE FROM audio_playlists_map_old;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2161
    const-string v8, "DELETE FROM audio_meta_old where _data LIKE \'content://drm/audio%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2165
    :cond_25
    const-string v8, "INSERT INTO files (_data,name,date_added,date_modified,old_id,media_type) SELECT _data,name,date_added,date_modified,_id,4 FROM audio_playlists_old;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2168
    const-string v8, "DROP TABLE audio_playlists_old;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2171
    const-string v8, "UPDATE audio_playlists_map_old SET playlist_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map_old.playlist_id AND files.media_type = 4);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2176
    const-string v8, "CREATE TRIGGER IF NOT EXISTS audio_playlists_map_old_cleanup DELETE ON files WHEN old.media_type = 4 BEGIN DELETE FROM audio_playlists_map_old WHERE playlist_id = old._id;END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2183
    const-string v8, "INSERT INTO files ( _data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,volid,alive, media_type )  SELECT _data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,volid,alive, 2 FROM audio_meta_old WHERE _data LIKE \'content://drm/audio%\';"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2195
    :cond_26
    :goto_2
    const/16 v8, 0x12c

    if-ge p2, v8, :cond_27

    .line 2198
    const-string v8, "files"

    invoke-static {p0, v8}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2201
    :cond_27
    const/16 v8, 0x12d

    if-ge p2, v8, :cond_28

    .line 2202
    const-string v8, "DROP INDEX IF EXISTS bucket_index"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2203
    const-string v8, "CREATE INDEX bucket_index on files(bucket_id, media_type, datetaken, _id)"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2204
    const-string v8, "CREATE INDEX bucket_name on files(bucket_id, media_type, bucket_display_name)"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2207
    :cond_28
    const/16 v8, 0x12e

    if-ge p2, v8, :cond_29

    .line 2208
    const-string v8, "CREATE INDEX parent_index ON files(parent);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2209
    const-string v8, "CREATE INDEX format_index ON files(format);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2212
    :cond_29
    const/16 v8, 0x12f

    if-ge p2, v8, :cond_2a

    .line 2215
    const-string v8, "DELETE from albums"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2216
    const-string v8, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2220
    :cond_2a
    const/16 v8, 0x130

    if-ge p2, v8, :cond_2b

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_2b

    .line 2223
    const-string v8, "CREATE TRIGGER IF NOT EXISTS files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2230
    :cond_2b
    const/16 v8, 0x131

    if-ge p2, v8, :cond_2c

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-ne p1, v8, :cond_2c

    .line 2233
    const-string v8, "DROP TRIGGER IF EXISTS files_cleanup"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2240
    :cond_2c
    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_2d

    .line 2242
    const-string v8, "DROP VIEW IF EXISTS audio_genres_map_view"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2244
    const-string v8, "CREATE VIEW IF NOT EXISTS audio_genres_map_view AS SELECT *  FROM audio_genres_map WHERE audio_genres_map.audio_id in (SELECT audio_meta._id FROM audio_meta WHERE alive=1);"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2249
    :cond_2d
    const-string v8, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2251
    const-string v8, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music>=1 AND alive=1 GROUP BY artist_key;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2259
    const-string v8, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2262
    const-string v8, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE alive=1 AND is_music>=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2272
    const-string v8, "DROP VIEW IF EXISTS album_info_all"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2275
    const-string v8, "CREATE VIEW IF NOT EXISTS album_info_all AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music>=1 GROUP BY audio.album_id;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2297
    if-eqz v0, :cond_2e

    .line 2299
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->insertAudioMeta(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 2304
    :cond_2e
    const/16 v8, 0x132

    if-ge p2, v8, :cond_2f

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_2f

    .line 2308
    const-string v8, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2310
    const-string v8, "DELETE FROM audio_genres_map"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2311
    const-string v8, "DELETE FROM audio_genres"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2314
    :cond_2f
    const/16 v8, 0x133

    if-ge p2, v8, :cond_30

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_30

    .line 2318
    const-string v8, "UPDATE files SET date_modified=0 WHERE media_type=1;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2325
    :cond_30
    const/16 v8, 0x191

    if-lt p2, v8, :cond_31

    const/16 v8, 0x191

    if-ne p2, v8, :cond_32

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-ne p1, v8, :cond_32

    .line 2328
    :cond_31
    const-string v8, "ALTER TABLE files ADD COLUMN storage_id INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE files SET storage_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2335
    :cond_32
    const/16 v8, 0x193

    if-ge p2, v8, :cond_33

    sget-object v8, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    if-eq p1, v8, :cond_33

    .line 2337
    const-string v8, "CREATE VIEW audio_genres_map_noid AS SELECT audio_id,genre_id from audio_genres_map;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2341
    :cond_33
    const/16 v8, 0x194

    if-ge p2, v8, :cond_34

    .line 2344
    const-string v8, "DELETE from albums"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2345
    const-string v8, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2349
    :cond_34
    const/16 v8, 0x195

    if-ge p2, v8, :cond_35

    .line 2351
    const-string v8, "ALTER TABLE files ADD COLUMN is_drm INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2353
    const-string v8, "DROP VIEW IF EXISTS audio_meta"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2354
    const-string v8, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,volid,alive FROM files WHERE media_type=2;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2358
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2361
    :cond_35
    const/16 v8, 0x197

    if-ge p2, v8, :cond_36

    .line 2365
    const-string v8, "UPDATE files SET date_modified=0;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2368
    :cond_36
    const/16 v8, 0x198

    if-ge p2, v8, :cond_37

    .line 2370
    const-string v8, "ALTER TABLE files ADD COLUMN width INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2371
    const-string v8, "ALTER TABLE files ADD COLUMN height INTEGER;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2374
    const-string v8, "UPDATE files SET date_modified=0;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2377
    const-string v8, "DROP VIEW IF EXISTS images"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2378
    const-string v8, "DROP VIEW IF EXISTS video"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2379
    const-string v8, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,volid,alive,favorite,lock_screen,width,height FROM files WHERE media_type=1;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2382
    const-string v8, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,volid,alive,favorite,width,height FROM files WHERE media_type=3;"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2388
    :cond_37
    invoke-static {p0, p2}, Lcom/android/providers/media/MediaProvider;->sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2389
    return-void

    .line 1105
    :catch_0
    move-exception v1

    .line 1106
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recover tables error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2188
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2189
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v9, "Exception when update playlists id: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private static updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 2640
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2642
    const/4 v3, 0x3

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "_display_name"

    aput-object v4, v5, v3

    .line 2643
    .local v5, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 2645
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2646
    .local v16, idColumnIndex:I
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2647
    .local v13, dataColumnIndex:I
    const-string v3, "_display_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2648
    .local v15, displayNameIndex:I
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2649
    .local v18, values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2650
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2651
    .local v14, displayName:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 2652
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2653
    .local v12, data:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 2654
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2655
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 2656
    .local v17, rowId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2660
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #dataColumnIndex:I
    .end local v14           #displayName:Ljava/lang/String;
    .end local v15           #displayNameIndex:I
    .end local v16           #idColumnIndex:I
    .end local v17           #rowId:I
    .end local v18           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2664
    .end local v5           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2660
    .restart local v5       #columns:[Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v13       #dataColumnIndex:I
    .restart local v15       #displayNameIndex:I
    .restart local v16       #idColumnIndex:I
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2662
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2664
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2666
    return-void
.end method

.method private updateGenre(JLjava/lang/String;)V
    .locals 9
    .parameter "rowId"
    .parameter "genre"

    .prologue
    .line 4508
    const/4 v7, 0x0

    .line 4509
    .local v7, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 4512
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4513
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "genre is an empty string, do not insert it"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    :cond_0
    :goto_0
    return-void

    .line 4518
    :cond_1
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4521
    .local v1, genresUri:Landroid/net/Uri;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4523
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 4525
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4526
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    invoke-virtual {p0, v1, v8}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 4533
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_1
    if-eqz v7, :cond_3

    .line 4534
    const-string v0, "members"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 4538
    :cond_3
    if-eqz v6, :cond_4

    .line 4539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4543
    :cond_4
    if-eqz v7, :cond_0

    .line 4545
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4546
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v0, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4547
    invoke-virtual {p0, v7, v8}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 4530
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4531
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 4538
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 4539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static updateImageInkInfobyInkTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 30
    .parameter "context"
    .parameter "db"
    .parameter "conval"

    .prologue
    .line 7384
    sget-boolean v2, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    if-nez v2, :cond_1

    .line 7503
    :cond_0
    :goto_0
    return-void

    .line 7388
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 7393
    const-string v2, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 7395
    .local v16, directory:Ljava/lang/String;
    if-nez v16, :cond_2

    .line 7396
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "[updateImageInkInfobyInkTable] null directory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7400
    :cond_2
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 7402
    .local v18, htcInkSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 7406
    .local v4, cols1:[Ljava/lang/String;
    const-string v3, "htcink"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 7408
    .local v13, c1:Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 7413
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7414
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 7415
    .local v22, inkdata:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 7419
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 7422
    .end local v22           #inkdata:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 7423
    const/4 v13, 0x0

    throw v2

    .line 7422
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 7423
    const/4 v13, 0x0

    .line 7429
    :cond_4
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "favorite"

    aput-object v3, v7, v2

    .line 7435
    .local v7, cols2:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " alive=1 AND _data like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7437
    .local v8, where:Ljava/lang/String;
    const-string v6, "images"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 7439
    .local v14, c2:Landroid/database/Cursor;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 7441
    .local v20, imageFavSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v14, :cond_6

    .line 7445
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7446
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 7447
    .local v26, rowId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 7448
    .local v21, imagePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".htcink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 7449
    .local v28, searchKey:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 7450
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 7453
    .local v23, int1:J
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 7455
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7457
    const/4 v2, 0x1

    shr-long v2, v23, v2

    const-wide/16 v5, 0x1

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    .line 7458
    const-wide/16 v2, 0x2

    or-long v23, v23, v2

    .line 7460
    new-instance v2, Ljava/lang/Long;

    move-wide/from16 v0, v26

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 7471
    .end local v21           #imagePath:Ljava/lang/String;
    .end local v23           #int1:J
    .end local v26           #rowId:J
    .end local v28           #searchKey:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 7472
    .local v17, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateImageInkInfobyInkTable][exception]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7474
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7475
    const/4 v14, 0x0

    .line 7481
    .end local v17           #e:Ljava/lang/Exception;
    :cond_6
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 7483
    .local v25, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    if-eqz v25, :cond_0

    .line 7485
    :goto_4
    :try_start_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7486
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 7487
    .local v19, id:Ljava/lang/Long;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 7489
    .local v29, val:Ljava/lang/Long;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 7490
    .local v15, cs:Landroid/content/ContentValues;
    const-string v2, "favorite"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7493
    const-string v2, "files"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 7495
    .end local v15           #cs:Landroid/content/ContentValues;
    .end local v19           #id:Ljava/lang/Long;
    .end local v29           #val:Ljava/lang/Long;
    :catch_1
    move-exception v17

    .line 7496
    .restart local v17       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateImageInkInfobyInkTable][update exception]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 7497
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    throw v2

    .line 7463
    .end local v25           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v21       #imagePath:Ljava/lang/String;
    .restart local v23       #int1:J
    .restart local v26       #rowId:J
    .restart local v28       #searchKey:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    shr-long v2, v23, v2

    const-wide/16 v5, 0x1

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    .line 7464
    const-wide/32 v2, 0xfffd

    and-long v23, v23, v2

    .line 7467
    :try_start_5
    new-instance v2, Ljava/lang/Long;

    move-wide/from16 v0, v26

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 7474
    .end local v21           #imagePath:Ljava/lang/String;
    .end local v23           #int1:J
    .end local v26           #rowId:J
    .end local v28           #searchKey:Ljava/lang/String;
    :catchall_2
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7475
    const/4 v14, 0x0

    throw v2

    .line 7474
    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7475
    const/4 v14, 0x0

    .line 7476
    goto/16 :goto_3
.end method

.method private waitForThumbnailReady(Landroid/net/Uri;)Z
    .locals 12
    .parameter "origUri"

    .prologue
    .line 2730
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "mini_thumb_magic"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2732
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/4 v11, 0x0

    .line 2761
    :goto_0
    return v11

    .line 2734
    :cond_0
    const/4 v11, 0x0

    .line 2736
    .local v11, result:Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2737
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2738
    .local v8, id:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2739
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2741
    .local v4, magic:J
    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v10

    .line 2743
    .local v10, req:Lcom/android/providers/media/MediaThumbRequest;
    if-nez v10, :cond_1

    .line 2744
    const/4 v11, 0x0

    goto :goto_0

    .line 2746
    :cond_1
    monitor-enter v10

    .line 2748
    :goto_1
    :try_start_0
    iget-object v0, v10, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_2

    .line 2749
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2751
    :catch_0
    move-exception v7

    .line 2752
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2754
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v0, v10, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_3

    .line 2755
    const/4 v11, 0x1

    .line 2757
    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2759
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #magic:J
    .end local v8           #id:J
    .end local v10           #req:Lcom/android/providers/media/MediaThumbRequest;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2757
    .restart local v1       #path:Ljava/lang/String;
    .restart local v4       #magic:J
    .restart local v8       #id:J
    .restart local v10       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "need_to_recompress"
    .parameter "out"
    .parameter "compressed"
    .parameter "bm"

    .prologue
    .line 6106
    const/4 v2, 0x0

    .line 6108
    .local v2, success:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 6110
    .local v1, outstream:Ljava/io/OutputStream;
    if-nez p1, :cond_1

    .line 6113
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 6114
    const/4 v2, 0x1

    .line 6125
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6131
    .end local v1           #outstream:Ljava/io/OutputStream;
    :goto_1
    if-nez v2, :cond_0

    .line 6135
    :try_start_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6140
    :cond_0
    :goto_2
    return-void

    .line 6117
    .restart local v1       #outstream:Ljava/io/OutputStream;
    :cond_1
    const/4 v3, 0x1

    :try_start_2
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-ne v3, v4, :cond_2

    .line 6118
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    goto :goto_0

    .line 6121
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_0

    .line 6126
    .end local v1           #outstream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 6127
    .local v0, ex:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6128
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 6129
    .local v0, ex:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6136
    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 6137
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error deleting album art record"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected CalcAlbumThumnailMaxFileSize()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 974
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    div-long/2addr v2, v4

    div-long v0, v2, v4

    .line 976
    .local v0, nMazVMSize:J
    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 977
    const/high16 v2, 0x30

    sput v2, Lcom/android/providers/media/MediaProvider;->MAX_ALBUMTHUMBNAIL_FILE_SIZE:I

    .line 984
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 979
    :cond_0
    const/high16 v2, 0x50

    sput v2, Lcom/android/providers/media/MediaProvider;->MAX_ALBUMTHUMBNAIL_FILE_SIZE:I

    goto :goto_0
.end method

.method public CalcVolumeID()V
    .locals 3

    .prologue
    .line 788
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, removeStorageState:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, extsd:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 794
    invoke-static {v0}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 800
    :cond_0
    return-void
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 4869
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 4870
    .local v3, ihelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 4871
    .local v1, ehelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4872
    .local v2, idb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4873
    const/4 v0, 0x0

    .line 4874
    .local v0, edb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 4875
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4876
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4879
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 4880
    .local v5, result:[Landroid/content/ContentProviderResult;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4881
    if-eqz v0, :cond_1

    .line 4882
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4887
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4888
    .local v4, res:Landroid/content/ContentResolver;
    const-string v6, "content://media/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4891
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4892
    if-eqz v0, :cond_2

    .line 4893
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    return-object v5

    .line 4891
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #result:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4892
    if-eqz v0, :cond_3

    .line 4893
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 3825
    const/4 v8, 0x0

    .line 3827
    .local v8, numInserted:I
    sget-object v10, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 3828
    .local v4, match:I
    const/16 v10, 0x12c

    if-ne v4, v10, :cond_1

    .line 3829
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v9

    .line 3912
    :cond_0
    :goto_0
    return v9

    .line 3834
    :cond_1
    iget-object v10, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    .line 3839
    iget-object v10, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v10

    .line 3844
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3845
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_2

    .line 3852
    monitor-exit v10

    goto :goto_0

    .line 3907
    .end local v0           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 3858
    .restart local v0       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3860
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_3

    .line 3865
    monitor-exit v10

    goto :goto_0

    .line 3868
    :cond_3
    const/16 v9, 0x6f

    if-eq v4, v9, :cond_4

    const/16 v9, 0x70

    if-ne v4, v9, :cond_5

    .line 3869
    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v9

    monitor-exit v10

    goto :goto_0

    .line 3870
    :cond_5
    const/16 v9, 0x2c0

    if-ne v4, v9, :cond_6

    .line 3871
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3872
    .local v2, handle:I
    invoke-direct {p0, v1, v2, p2}, Lcom/android/providers/media/MediaProvider;->setObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I

    move-result v9

    monitor-exit v10

    goto :goto_0

    .line 3877
    .end local v2           #handle:I
    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3881
    :try_start_2
    array-length v3, p2

    .line 3890
    .local v3, len:I
    const/4 v6, 0x0

    .line 3891
    .local v6, nStart:I
    move v5, v3

    .line 3893
    .local v5, nEnd:I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 3894
    invoke-virtual {p0, p1, p2, v6, v5}, Lcom/android/providers/media/MediaProvider;->insertInternalLoop(Landroid/net/Uri;[Landroid/content/ContentValues;II)I

    move-result v7

    .line 3895
    .local v7, nStop:I
    sub-int v9, v7, v6

    add-int/2addr v8, v9

    .line 3896
    add-int/lit8 v6, v7, 0x1

    .line 3897
    goto :goto_1

    .line 3902
    .end local v7           #nStop:I
    :cond_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3905
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3907
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3909
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v9, v8

    .line 3912
    goto :goto_0

    .line 3904
    .end local v3           #len:I
    .end local v5           #nEnd:I
    .end local v6           #nStart:I
    :catchall_1
    move-exception v9

    .line 3905
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5146
    const/4 v1, 0x0

    .line 5147
    .local v1, count:I
    sget-object v9, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 5157
    .local v4, match:I
    const/16 v9, 0x1f4

    if-ne v4, v9, :cond_2

    .line 5158
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 5300
    :cond_0
    :goto_0
    return v7

    .line 5161
    :cond_1
    iput-object v10, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    move v7, v8

    .line 5162
    goto :goto_0

    .line 5167
    :cond_2
    const/16 v9, 0x2713

    if-ne v9, v4, :cond_3

    .line 5169
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 5171
    .local v2, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-eqz v2, :cond_0

    .line 5176
    iget-object v0, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumArtCaches:Ljava/util/HashMap;

    .line 5178
    .local v0, albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 5182
    monitor-enter v0

    .line 5183
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5184
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 5192
    .end local v0           #albumArtCaches:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_3
    const/16 v9, 0x12d

    if-ne v4, v9, :cond_4

    .line 5193
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    .line 5194
    const/4 v1, 0x1

    :goto_1
    move v7, v1

    .line 5300
    goto :goto_0

    .line 5195
    :cond_4
    const/16 v9, 0x2c1

    if-ne v4, v9, :cond_6

    .line 5196
    iget-object v8, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v8

    .line 5197
    :try_start_1
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-eqz v7, :cond_5

    .line 5199
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5200
    const/4 v1, 0x1

    .line 5203
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    .line 5207
    :goto_2
    monitor-exit v8

    goto :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 5205
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 5209
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 5210
    .restart local v2       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-eqz v2, :cond_0

    .line 5223
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5225
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v9

    .line 5226
    :try_start_2
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v4, p2, v7}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 5229
    if-eq v4, v8, :cond_7

    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    const/16 v7, 0xc8

    if-eq v4, v7, :cond_7

    const/16 v7, 0xc9

    if-eq v4, v7, :cond_7

    const/16 v7, 0x64

    if-eq v4, v7, :cond_7

    const/16 v7, 0x65

    if-eq v4, v7, :cond_7

    const/16 v7, 0x2bc

    if-eq v4, v7, :cond_7

    const/16 v7, 0x2bd

    if-ne v4, v7, :cond_8

    .line 5234
    :cond_7
    const/4 v7, 0x0

    sget-object v10, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v10, v10, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/providers/media/MediaProvider;->IsNeedAliveConstrain(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v8, :cond_8

    .line 5236
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v10, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v10, v10, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/providers/media/MediaProvider;->AppnedAliveConstrain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5243
    :cond_8
    sparse-switch v4, :sswitch_data_0

    .line 5270
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v3, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5278
    :goto_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5279
    .local v6, volume:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 5282
    .local v5, notifyUri:Landroid/net/Uri;
    sget-boolean v7, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    if-nez v7, :cond_9

    .line 5283
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5295
    :goto_4
    monitor-exit v9

    goto/16 :goto_1

    .end local v5           #notifyUri:Landroid/net/Uri;
    .end local v6           #volume:Ljava/lang/String;
    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v7

    .line 5248
    :sswitch_0
    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    .line 5251
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v10, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v10, v10, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/providers/media/MediaProvider;->AppnedAliveConstrain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5255
    const-string v7, "files"

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v3, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v1

    .line 5257
    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    goto :goto_3

    :catchall_3
    move-exception v7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    throw v7

    .line 5262
    :sswitch_1
    const-string v7, "audio_genres_map"

    sget-object v8, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v3, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5264
    goto :goto_3

    .line 5285
    .restart local v5       #notifyUri:Landroid/net/Uri;
    .restart local v6       #volume:Ljava/lang/String;
    :cond_9
    sget-wide v7, Lcom/android/providers/media/MediaProvider;->mNextNotifySystemTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v7, v10

    if-ltz v7, :cond_a

    sget-object v7, Lcom/android/providers/media/MediaProvider;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 5286
    :cond_a
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5287
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z

    .line 5288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v10, 0x3e8

    add-long/2addr v7, v10

    sput-wide v7, Lcom/android/providers/media/MediaProvider;->mNextNotifySystemTime:J

    .line 5292
    :goto_5
    sput-object v5, Lcom/android/providers/media/MediaProvider;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 5290
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 5243
    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_1
        0x2be -> :sswitch_0
        0x2bf -> :sswitch_0
    .end sparse-switch
.end method

.method getAlbumArtOutputUri(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;Lcom/android/providers/media/MediaProvider$STORAGE;)Landroid/net/Uri;
    .locals 15
    .parameter "db"
    .parameter "album_id"
    .parameter "albumart_uri"
    .parameter "internal"

    .prologue
    .line 6057
    const/4 v11, 0x0

    .line 6060
    .local v11, out:Landroid/net/Uri;
    if-eqz p4, :cond_1

    .line 6061
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6064
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6065
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6066
    .local v7, albumart_path:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 6067
    move-object/from16 v11, p4

    .line 6073
    .end local v7           #albumart_path:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 6074
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6075
    const/4 v8, 0x0

    .line 6079
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    if-nez p4, :cond_2

    .line 6080
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 6081
    .local v10, initialValues:Landroid/content/ContentValues;
    const-string v1, "album_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6083
    :try_start_1
    const-string v1, ""

    const-string v2, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v10, v1, v2}, Lcom/android/providers/media/MediaProvider;->ensureFile(Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v14

    .line 6084
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "album_art"

    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 6085
    .local v12, rowId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_2

    .line 6090
    sget-object v1, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 6098
    .end local v10           #initialValues:Landroid/content/ContentValues;
    .end local v12           #rowId:J
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-object v11

    .line 6070
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_3
    const/16 p4, 0x0

    goto :goto_0

    .line 6073
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 6074
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6075
    const/4 v8, 0x0

    :cond_4
    throw v1

    .line 6094
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v10       #initialValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 6095
    .local v9, ex:Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "error creating album thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 3671
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3724
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3680
    :sswitch_0
    const/4 v6, 0x0

    .line 3682
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3683
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 3684
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3685
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3686
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3690
    if-eqz v6, :cond_1

    .line 3691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3722
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 3690
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_0

    .line 3691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3690
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3698
    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v7, "vnd.android.cursor.dir/image"

    goto :goto_1

    .line 3701
    :sswitch_2
    const-string v7, "image/jpeg"

    goto :goto_1

    .line 3706
    :sswitch_3
    const-string v7, "vnd.android.cursor.dir/audio"

    goto :goto_1

    .line 3710
    :sswitch_4
    const-string v7, "vnd.android.cursor.dir/genre"

    goto :goto_1

    .line 3713
    :sswitch_5
    const-string v7, "vnd.android.cursor.item/genre"

    goto :goto_1

    .line 3716
    :sswitch_6
    const-string v7, "vnd.android.cursor.dir/playlist"

    goto :goto_1

    .line 3719
    :sswitch_7
    const-string v7, "vnd.android.cursor.item/playlist"

    goto :goto_1

    .line 3722
    :sswitch_8
    const-string v7, "vnd.android.cursor.dir/video"

    goto :goto_1

    .line 3671
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_3
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_3
        0x71 -> :sswitch_0
        0x78 -> :sswitch_2
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0x2bd -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 3953
    sget-object v2, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3954
    .local v0, match:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 3957
    .local v1, newUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    const/16 v2, 0x2be

    if-eq v0, v2, :cond_0

    .line 3958
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3960
    :cond_0
    return-object v1
.end method

.method protected insertInternalLoop(Landroid/net/Uri;[Landroid/content/ContentValues;II)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "nStart"
    .parameter "nEnd"

    .prologue
    .line 3921
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, p3

    .line 3946
    :cond_1
    :goto_0
    return v1

    .line 3925
    :cond_2
    const/4 v1, 0x0

    .line 3929
    .local v1, i:I
    :try_start_0
    array-length v3, p2

    .line 3931
    .local v3, max:I
    move v1, p3

    :goto_1
    if-ge v1, p4, :cond_1

    if-ge v1, v3, :cond_1

    .line 3932
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 3934
    .local v2, match:I
    aget-object v4, p2, v1

    if-eqz v4, :cond_3

    .line 3935
    aget-object v4, p2, v1

    invoke-direct {p0, p1, v2, v4}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3931
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3941
    .end local v2           #match:I
    .end local v3           #max:I
    :catch_0
    move-exception v0

    .line 3943
    .local v0, e:Ljava/lang/IllegalStateException;
    if-eqz v0, :cond_1

    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "insertInternalLoop.IllegalStateException():"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "one"
    .parameter "two"

    .prologue
    const/16 v4, 0x2c

    .line 6624
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 6625
    move-object v1, p1

    .line 6636
    .local v1, name:Ljava/lang/String;
    :goto_0
    const-string v2, ", the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6639
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6640
    .local v0, fix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6644
    .end local v0           #fix:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 6628
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 6629
    move-object v1, p1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 6631
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    move-object v1, p2

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 807
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    .local v0, context:Landroid/content/Context;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "_id"

    const-string v7, "audio.album_id AS _id"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "album"

    const-string v7, "album"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "album_key"

    const-string v7, "album_key"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "minyear"

    const-string v7, "MIN(year) AS minyear"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "maxyear"

    const-string v7, "MAX(year) AS maxyear"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "artist"

    const-string v7, "artist"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "artist_id"

    const-string v7, "artist"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "artist_key"

    const-string v7, "artist_key"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "numsongs"

    const-string v7, "count(*) AS numsongs"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v6, "album_art"

    const-string v7, "album_art._data AS album_art"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    aget-object v6, v6, v10

    const-string v7, "%1"

    const v8, 0x7f040003

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 828
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    .line 831
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/providers/media/MediaProvider;->mClosedDatabases:Ljava/util/HashMap;

    .line 834
    const-string v5, "internal"

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 836
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 837
    .local v2, iFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 846
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 848
    iput-boolean v9, p0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    .line 856
    const-string v5, "storage"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 859
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    .line 862
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 868
    :cond_0
    const-string v5, "external"

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->CalcVolumeID()V

    .line 884
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "thumbs thread"

    const/16 v6, 0xa

    invoke-direct {v1, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 887
    .local v1, ht:Landroid/os/HandlerThread;
    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 890
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 891
    new-instance v5, Lcom/android/providers/media/MediaProvider$4;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/providers/media/MediaProvider$4;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    .line 965
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "[MediaProvider][onCreate]-"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return v9
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 24
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 5678
    const/16 v21, 0x0

    .line 5680
    .local v21, pfd:Landroid/os/ParcelFileDescriptor;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x79

    if-ne v5, v6, :cond_3

    .line 5682
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v18

    .line 5683
    .local v18, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v18, :cond_0

    .line 5684
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t open database for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5686
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5687
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_1

    .line 5688
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t open database for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5690
    :cond_1
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5691
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 5692
    .local v23, songid:I
    const-string v5, "audio_meta"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5694
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_data"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v8, "album_id"

    aput-object v8, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5699
    .local v17, c:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5700
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5701
    .local v7, audiopath:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 5707
    .local v16, albumid:I
    sget-object v5, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v8, v0

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 5716
    .local v20, newUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 5722
    .end local v7           #audiopath:Ljava/lang/String;
    .end local v16           #albumid:I
    .end local v20           #newUri:Landroid/net/Uri;
    :cond_2
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    move-object/from16 v22, v21

    .line 5768
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v18           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v21           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v23           #songid:I
    .local v22, pfd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v22

    .line 5717
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #audiopath:Ljava/lang/String;
    .restart local v16       #albumid:I
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v18       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v20       #newUri:Landroid/net/Uri;
    .restart local v21       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v23       #songid:I
    :catch_0
    move-exception v19

    .line 5719
    .local v19, ex:Ljava/io/FileNotFoundException;
    move/from16 v0, v16

    int-to-long v8, v0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    goto :goto_0

    .line 5729
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #audiopath:Ljava/lang/String;
    .end local v16           #albumid:I
    .end local v17           #c:Landroid/database/Cursor;
    .end local v18           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v19           #ex:Ljava/io/FileNotFoundException;
    .end local v20           #newUri:Landroid/net/Uri;
    .end local v23           #songid:I
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/providers/media/MediaProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    :cond_4
    move-object/from16 v22, v21

    .line 5768
    .end local v21           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v22       #pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 5732
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v21       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v19

    .line 5733
    .restart local v19       #ex:Ljava/io/FileNotFoundException;
    const-string v5, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5735
    throw v19

    .line 5738
    :cond_5
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_9

    .line 5740
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v18

    .line 5741
    .restart local v18       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v18, :cond_6

    .line 5742
    throw v19

    .line 5744
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5745
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_7

    .line 5746
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t open database for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5748
    :cond_7
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5749
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 5750
    .restart local v16       #albumid:I
    const-string v5, "audio_meta"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5752
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "track"

    move-object v8, v3

    move-object v9, v4

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5756
    .restart local v17       #c:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5757
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5758
    .restart local v7       #audiopath:Ljava/lang/String;
    move/from16 v0, v16

    int-to-long v8, v0

    move-object/from16 v5, p0

    move-object v6, v4

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->getThumb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    .line 5760
    .end local v7           #audiopath:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 5762
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v16           #albumid:I
    .end local v17           #c:Landroid/database/Cursor;
    .end local v18           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_9
    if-nez v21, :cond_4

    .line 5763
    throw v19
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 44
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 2845
    sget-object v3, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 2847
    .local v17, table:I
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 2852
    .local v39, prependArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v3, 0x1f4

    move/from16 v0, v17

    if-ne v0, v3, :cond_2

    .line 2853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2857
    const/16 v30, 0x0

    .line 3585
    :cond_0
    :goto_0
    return-object v30

    .line 2860
    :cond_1
    new-instance v30, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "volume"

    aput-object v6, v3, v5

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2861
    .local v30, c:Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    aput-object v6, v3, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2872
    .end local v30           #c:Landroid/database/MatrixCursor;
    :cond_2
    const/16 v3, 0x258

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    .line 2873
    new-instance v30, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "fsid"

    aput-object v6, v3, v5

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2874
    .restart local v30       #c:Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2881
    .end local v30           #c:Landroid/database/MatrixCursor;
    :cond_3
    const/16 v3, 0x259

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 2882
    new-instance v30, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "version"

    aput-object v6, v3, v5

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2883
    .restart local v30       #c:Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x198

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 2887
    .end local v30           #c:Landroid/database/MatrixCursor;
    :cond_4
    const/16 v24, 0x0

    .line 2888
    .local v24, groupBy:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v32

    .line 2889
    .local v32, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v32, :cond_5

    .line 2890
    const/16 v30, 0x0

    goto :goto_0

    .line 2893
    :cond_5
    invoke-virtual/range {v32 .. v32}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 2894
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v10, :cond_6

    const/16 v30, 0x0

    goto/16 :goto_0

    .line 2895
    :cond_6
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2896
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2897
    .local v18, limit:Ljava/lang/String;
    const-string v3, "filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2898
    .local v33, filter:Ljava/lang/String;
    const/16 v37, 0x0

    .line 2899
    .local v37, keywords:[Ljava/lang/String;
    if-eqz v33, :cond_7

    .line 2900
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    .line 2901
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2902
    const-string v3, " "

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 2903
    .local v40, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v40

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v37, v0

    .line 2904
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v31

    .line 2905
    .local v31, col:Ljava/text/Collator;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 2906
    const/16 v35, 0x0

    .local v35, i:I
    :goto_1
    move-object/from16 v0, v40

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_7

    .line 2907
    aget-object v3, v40, v35

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2908
    .local v36, key:Ljava/lang/String;
    const-string v3, "\\"

    const-string v5, "\\\\"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2909
    const-string v3, "%"

    const-string v5, "\\%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2910
    const-string v3, "_"

    const-string v5, "\\_"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2911
    aput-object v36, v37, v35

    .line 2906
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 2915
    .end local v31           #col:Ljava/text/Collator;
    .end local v35           #i:I
    .end local v36           #key:Ljava/lang/String;
    .end local v40           #searchWords:[Ljava/lang/String;
    :cond_7
    const-string v3, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2916
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2919
    :cond_8
    const/4 v8, 0x0

    .line 2921
    .local v8, hasThumbnailId:Z
    const/16 v29, 0x0

    .line 2923
    .local v29, bExternal:Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v3, "external"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2924
    const/16 v29, 0x1

    .line 2928
    :cond_9

    move-object/from16 v42, p0

    move/from16 v43, v17

    invoke-direct/range {v42 .. v43}, Lcom/android/providers/media/MediaProvider;->isPrivacyMode(I)Z

    move-result v3

    if-eqz v3, :cond_MIUI_ADD_1

    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_MIUI_ADD_1
    sparse-switch v17, :sswitch_data_0

    .line 3563
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2930
    :sswitch_0
    const-string v3, "images"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2931
    const-string v3, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2932
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2936
    :cond_a
    const-string v3, "alive=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2937
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3570
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v26, p5

    move-object/from16 v27, v18

    invoke-virtual/range {v19 .. v27}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 3574
    .local v30, c:Landroid/database/Cursor;
    if-eqz v30, :cond_0

    .line 3575
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2945
    .end local v30           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v3, "images"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2946
    const-string v3, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2947
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2953
    :cond_c
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2954
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2957
    const-string v3, " AND alive=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2958
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2966
    :sswitch_2
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    if-eqz v3, :cond_b

    .line 2970
    const-string v3, "htcink"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2971
    const-string v3, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2972
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto :goto_2

    .line 2980
    :sswitch_3
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->mbVolIdEnable:Z

    if-eqz v3, :cond_b

    .line 2984
    const-string v3, "volid_info"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2985
    const-string v3, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2986
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_2

    .line 2992
    :sswitch_4
    const/4 v8, 0x1

    .line 2994
    :sswitch_5
    const-string v6, "thumbnails"

    const-string v7, "image_id"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2995
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 3000
    :sswitch_6
    if-eqz p2, :cond_e

    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    if-nez p4, :cond_e

    if-eqz p3, :cond_d

    const-string v3, "is_music=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "is_podcast=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const/4 v3, 0x0

    aget-object v3, p2, v3

    const-string v5, "count(*)"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v37, :cond_e

    .line 3007
    const-string v3, "audio_meta"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3011
    const-string v3, "alive=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3012
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3016
    :cond_e
    const-string v3, "audio"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3017
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_3
    if-eqz v37, :cond_10

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_10

    .line 3018
    if-lez v35, :cond_f

    .line 3019
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3028
    :cond_f
    const-string v3, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3017
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 3037
    :cond_10
    if-eqz v37, :cond_11

    move-object/from16 v0, v37

    array-length v3, v0

    if-lez v3, :cond_11

    .line 3040
    const-string v3, " AND alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3041
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3046
    :cond_11
    const-string v3, " alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3047
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3055
    .end local v35           #i:I
    :sswitch_7
    const-string v3, "audio"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3058
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3059
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3064
    const-string v3, " AND alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3065
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3072
    :sswitch_8
    if-nez v29, :cond_12

    .line 3073
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3078
    const-string v3, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id=?)"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3080
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3083
    :cond_12
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3088
    const-string v3, "_id IN (SELECT genre_id FROM audio_genres_map_view WHERE audio_id = ?)"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3090
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3098
    :sswitch_9
    if-nez v29, :cond_13

    .line 3099
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3102
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3103
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3106
    :cond_13
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3109
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3110
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3111
    const-string v3, " AND _id in (SELECT genre_id FROM audio_genres_map_view) "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3118
    :sswitch_a
    const-string v3, "audio_playlists"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3123
    const-string v3, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id=?)"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3125
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3129
    :sswitch_b
    const-string v3, "audio_playlists"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3132
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3133
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3140
    :sswitch_c
    if-nez v29, :cond_14

    .line 3141
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3143
    :cond_14
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3144
    const-string v3, " _id in (SELECT genre_id FROM audio_genres_map_view) "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3150
    :sswitch_d
    const-string v3, "audio_genres"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3153
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3154
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3185
    :sswitch_e
    if-nez v37, :cond_18

    if-eqz p2, :cond_18

    if-eqz p3, :cond_15

    const-string v3, "genre_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_15
    const/16 v41, 0x1

    .line 3187
    .local v41, simpleQuery:Z
    :goto_4
    if-eqz p2, :cond_19

    .line 3188
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_5
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_19

    .line 3189
    aget-object v38, p2, v35

    .line 3190
    .local v38, p:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3195
    const/16 v41, 0x0

    .line 3197
    :cond_16
    if-eqz v41, :cond_17

    const-string v3, "audio_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "genre_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3199
    const/16 v41, 0x0

    .line 3188
    :cond_17
    add-int/lit8 v35, v35, 0x1

    goto :goto_5

    .line 3185
    .end local v35           #i:I
    .end local v38           #p:Ljava/lang/String;
    .end local v41           #simpleQuery:Z
    :cond_18
    const/16 v41, 0x0

    goto :goto_4

    .line 3203
    .restart local v41       #simpleQuery:Z
    :cond_19
    if-eqz v41, :cond_1a

    .line 3204
    const-string v3, "audio_genres_map_noid"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3205
    const/16 v3, 0x6c

    move/from16 v0, v17

    if-ne v0, v3, :cond_b

    .line 3206
    const-string v3, "genre_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3207
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3210
    :cond_1a
    const-string v3, "audio_genres_map_noid, audio"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3211
    const-string v3, "audio._id = audio_id"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3212
    const/16 v3, 0x6c

    move/from16 v0, v17

    if-ne v0, v3, :cond_1b

    .line 3213
    const-string v3, " AND genre_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3214
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3216
    const-string v3, " AND alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3217
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3220
    :cond_1b
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_6
    if-eqz v37, :cond_b

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_b

    .line 3221
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3222
    const-string v3, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3220
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 3247
    .end local v35           #i:I
    .end local v41           #simpleQuery:Z
    :sswitch_f
    const-string v3, "audio_playlists"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3251
    :sswitch_10
    const-string v3, "audio_playlists"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3254
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3255
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3264
    :sswitch_11
    if-nez v37, :cond_1f

    if-eqz p2, :cond_1f

    if-eqz p3, :cond_1c

    const-string v3, "playlist_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1c
    const/16 v41, 0x1

    .line 3266
    .restart local v41       #simpleQuery:Z
    :goto_7
    if-eqz p2, :cond_20

    .line 3267
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_8
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_20

    .line 3268
    aget-object v38, p2, v35

    .line 3269
    .restart local v38       #p:Ljava/lang/String;
    if-eqz v41, :cond_1d

    const-string v3, "audio_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "playlist_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "play_order"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 3271
    const/16 v41, 0x0

    .line 3273
    :cond_1d
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3274
    const-string v3, "audio_playlists_map._id AS _id"

    aput-object v3, p2, v35

    .line 3267
    :cond_1e
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 3264
    .end local v35           #i:I
    .end local v38           #p:Ljava/lang/String;
    .end local v41           #simpleQuery:Z
    :cond_1f
    const/16 v41, 0x0

    goto :goto_7

    .line 3278
    .restart local v41       #simpleQuery:Z
    :cond_20
    if-eqz v41, :cond_22

    .line 3279
    const-string v3, "audio_playlists_map"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3282
    const-string v3, "playlist_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3283
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3316
    :cond_21
    const/16 v3, 0x71

    move/from16 v0, v17

    if-ne v0, v3, :cond_b

    .line 3319
    const-string v3, " AND audio_playlists_map._id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3320
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3286
    :cond_22
    const-string v3, "audio_playlists_map, audio"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3295
    const-string v3, "audio._id = audio_id AND playlist_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3296
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3297
    const-string v3, " AND alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3298
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3301
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_9
    if-eqz v37, :cond_21

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_21

    .line 3302
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3308
    const-string v3, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3301
    add-int/lit8 v35, v35, 0x1

    goto :goto_9

    .line 3326
    .end local v35           #i:I
    .end local v41           #simpleQuery:Z
    :sswitch_12
    const-string v3, "video"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3330
    const-string v3, " alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3331
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3337
    :sswitch_13
    const-string v3, "video"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3340
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3341
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3346
    const-string v3, " AND alive=? "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3347
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3352
    :sswitch_14
    const/4 v8, 0x1

    .line 3354
    :sswitch_15
    const-string v6, "videothumbnails"

    const-string v7, "video_id"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3355
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 3360
    :sswitch_16
    if-eqz p2, :cond_24

    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_24

    if-nez p4, :cond_24

    if-eqz p3, :cond_23

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    :cond_23
    const/4 v3, 0x0

    aget-object v3, p2, v3

    const-string v5, "count(*)"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    if-eqz v37, :cond_24

    .line 3365
    const-string v3, "audio_meta"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3366
    const/4 v3, 0x0

    const-string v5, "count(distinct artist_id)"

    aput-object v5, p2, v3

    .line 3370
    const-string v3, "is_music>=1"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3374
    const-string v3, " AND alive=1 "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3378
    :cond_24
    const-string v3, "artist_info"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3379
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_a
    if-eqz v37, :cond_b

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_b

    .line 3380
    if-lez v35, :cond_25

    .line 3381
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3386
    :cond_25
    const-string v3, "artist_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3379
    add-int/lit8 v35, v35, 0x1

    goto :goto_a

    .line 3395
    .end local v35           #i:I
    :sswitch_17
    const-string v3, "artist_info"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3398
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3399
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3404
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 3405
    .local v28, aid:Ljava/lang/String;
    const-string v3, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3409
    const-string v3, " alive=1 AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3417
    const-string v3, "is_music>=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id=?)"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3419
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3421
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_b
    if-eqz v37, :cond_26

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_26

    .line 3422
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3427
    const-string v3, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3421
    add-int/lit8 v35, v35, 0x1

    goto :goto_b

    .line 3433
    :cond_26
    const-string v24, "audio.album_id"

    .line 3434
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v5, "numsongs_by_artist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count(CASE WHEN artist_id=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "numsongs_by_artist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3437
    sget-object v3, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3441
    .end local v28           #aid:Ljava/lang/String;
    .end local v35           #i:I
    :sswitch_19
    if-eqz p2, :cond_28

    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_28

    if-nez p4, :cond_28

    if-eqz p3, :cond_27

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    :cond_27
    const/4 v3, 0x0

    aget-object v3, p2, v3

    const-string v5, "count(*)"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v37, :cond_28

    .line 3446
    const-string v3, "audio_meta"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3447
    const/4 v3, 0x0

    const-string v5, "count(distinct album_id)"

    aput-object v5, p2, v3

    .line 3451
    const-string v3, " alive=1 AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3455
    const-string v3, "is_music>=1"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3458
    :cond_28
    const-string v3, "album_info"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3459
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_c
    if-eqz v37, :cond_b

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_b

    .line 3460
    if-lez v35, :cond_29

    .line 3461
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3467
    :cond_29
    const-string v3, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3459
    add-int/lit8 v35, v35, 0x1

    goto :goto_c

    .line 3480
    .end local v35           #i:I
    :sswitch_1a
    const-string v3, "album_info_all"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3482
    const/16 v35, 0x0

    .restart local v35       #i:I
    :goto_d
    if-eqz v37, :cond_b

    move-object/from16 v0, v37

    array-length v3, v0

    move/from16 v0, v35

    if-ge v0, v3, :cond_b

    .line 3483
    if-lez v35, :cond_2a

    .line 3484
    const-string v3, " AND "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3490
    :cond_2a
    const-string v3, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v37, v35

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3482
    add-int/lit8 v35, v35, 0x1

    goto :goto_d

    .line 3502
    .end local v35           #i:I
    :sswitch_1b
    const-string v3, "album_info"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3505
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3506
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3511
    :sswitch_1c
    const-string v3, "album_art"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3514
    const-string v3, "album_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3515
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3520
    :sswitch_1d
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "Legacy media search Uri used. Please update your code."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :sswitch_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v9, p0

    move-object v11, v4

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p5

    invoke-direct/range {v9 .. v18}, Lcom/android/providers/media/MediaProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    goto/16 :goto_0

    .line 3538
    :sswitch_1f
    const-string v3, "_id=?"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3539
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3542
    const-string v3, " AND alive=1 "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3543
    const-string v3, "files"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3550
    :sswitch_20
    const-string v3, "files"

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3553
    const-string v3, " alive=1 "

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3559
    :sswitch_21
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 3560
    .local v34, handle:I
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v10, v1}, Lcom/android/providers/media/MediaProvider;->getObjectReferences(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v30

    goto/16 :goto_0

    .line 2928
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_9
        0x68 -> :sswitch_a
        0x69 -> :sswitch_b
        0x6a -> :sswitch_c
        0x6b -> :sswitch_d
        0x6c -> :sswitch_e
        0x6d -> :sswitch_e
        0x6e -> :sswitch_f
        0x6f -> :sswitch_10
        0x70 -> :sswitch_11
        0x71 -> :sswitch_11
        0x72 -> :sswitch_16
        0x73 -> :sswitch_17
        0x74 -> :sswitch_19
        0x75 -> :sswitch_1b
        0x76 -> :sswitch_18
        0x78 -> :sswitch_1c
        0xc8 -> :sswitch_12
        0xc9 -> :sswitch_13
        0xca -> :sswitch_15
        0xcb -> :sswitch_14
        0x190 -> :sswitch_1d
        0x191 -> :sswitch_1e
        0x192 -> :sswitch_1e
        0x2bc -> :sswitch_20
        0x2bd -> :sswitch_1f
        0x2be -> :sswitch_20
        0x2bf -> :sswitch_1f
        0x2c0 -> :sswitch_21
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_1a
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 63
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 5306
    const/16 v41, 0x0

    .line 5309
    .local v41, count:I
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v47

    .line 5313
    .local v47, match:I
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v44

    .line 5316
    .local v44, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    const/16 v5, 0x2714

    move/from16 v0, v47

    if-ne v5, v0, :cond_2

    if-eqz v44, :cond_2

    .line 5318
    new-instance v61, Landroid/content/ContentValues;

    move-object/from16 v0, v61

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5320
    .local v61, values:Landroid/content/ContentValues;
    const-string v5, "mounted_sdcard"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 5322
    .local v48, mounted:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v44 .. v44}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/providers/media/MediaProvider;->querySdcardId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v56

    .line 5326
    .local v56, sdcardid:J
    const-wide/16 v5, 0x1

    cmp-long v5, v48, v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v56, v5

    if-eqz v5, :cond_1

    .line 5327
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 5334
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 5631
    .end local v48           #mounted:J
    .end local v56           #sdcardid:J
    .end local v61           #values:Landroid/content/ContentValues;
    :goto_1
    return v5

    .line 5328
    .restart local v48       #mounted:J
    .restart local v56       #sdcardid:J
    .restart local v61       #values:Landroid/content/ContentValues;
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v48, v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v56, v5

    if-eqz v5, :cond_0

    .line 5329
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V

    goto :goto_0

    .line 5338
    .end local v48           #mounted:J
    .end local v56           #sdcardid:J
    .end local v61           #values:Landroid/content/ContentValues;
    :cond_2
    if-nez v44, :cond_3

    .line 5349
    const/4 v5, 0x0

    goto :goto_1

    .line 5351
    :cond_3
    invoke-virtual/range {v44 .. v44}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5353
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v45, 0x0

    .line 5354
    .local v45, genre:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 5355
    const-string v5, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 5356
    const-string v5, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5359
    :cond_4
    sget-object v62, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v62

    .line 5360
    :try_start_0
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v47

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 5365
    const/16 v5, 0x2be

    move/from16 v0, v47

    if-eq v0, v5, :cond_5

    const/16 v5, 0x2bf

    move/from16 v0, v47

    if-ne v0, v5, :cond_b

    :cond_5
    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 5367
    const/16 v53, 0x0

    .line 5370
    .local v53, oldPath:Ljava/lang/String;
    const-string v5, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 5373
    .local v51, newPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5376
    if-eqz v51, :cond_b

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v51

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5377
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v42

    .line 5380
    .local v42, cursor:Landroid/database/Cursor;
    if-eqz v42, :cond_6

    :try_start_1
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5381
    const/4 v5, 0x1

    move-object/from16 v0, v42

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v53

    .line 5384
    :cond_6
    if-eqz v42, :cond_7

    :try_start_2
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 5386
    :cond_7
    if-eqz v53, :cond_b

    .line 5388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5391
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 5393
    if-lez v41, :cond_8

    .line 5395
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v38, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v38, v5

    .line 5396
    .local v38, bindArgs:[Ljava/lang/Object;
    const-string v5, "UPDATE files SET _data=REPLACE(_data, ?1, ?2);"

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5402
    .end local v38           #bindArgs:[Ljava/lang/Object;
    :cond_8
    if-lez v41, :cond_9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5403
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5405
    :cond_9
    monitor-exit v62

    move/from16 v5, v41

    goto/16 :goto_1

    .line 5384
    :catchall_0
    move-exception v5

    if-eqz v42, :cond_a

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v5

    .line 5622
    .end local v42           #cursor:Landroid/database/Cursor;
    .end local v51           #newPath:Ljava/lang/String;
    .end local v53           #oldPath:Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v62
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 5410
    :cond_b
    sparse-switch v47, :sswitch_data_0

    .line 5618
    :cond_c
    :try_start_3
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 5622
    :cond_d
    :goto_2
    monitor-exit v62
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5625
    if-lez v41, :cond_e

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-nez v5, :cond_e

    .line 5626
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_e
    move/from16 v5, v41

    .line 5631
    goto/16 :goto_1

    .line 5412
    :sswitch_0
    :try_start_4
    const-string v5, "audio_playlists_map"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/providers/media/MediaProvider;->BulkUpdate(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 5417
    :sswitch_1
    new-instance v61, Landroid/content/ContentValues;

    move-object/from16 v0, v61

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5418
    .restart local v61       #values:Landroid/content/ContentValues;
    const-string v5, "album_artist"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 5419
    .local v35, albumartist:Ljava/lang/String;
    const-string v5, "compilation"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 5420
    .local v40, compilation:Ljava/lang/String;
    const-string v5, "compilation"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5424
    const-string v5, "artist"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5425
    .local v10, artist:Ljava/lang/String;
    const-string v5, "artist"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5426
    if-eqz v10, :cond_f

    .line 5428
    move-object/from16 v0, v44

    iget-object v15, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 5429
    .local v15, artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5430
    :try_start_5
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Long;

    .line 5431
    .local v60, temp:Ljava/lang/Long;
    if-nez v60, :cond_14

    .line 5432
    const-string v7, "artists"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object v6, v4

    move-object v11, v10

    move-object/from16 v16, p1

    invoke-direct/range {v5 .. v16}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v36

    .line 5437
    .local v36, artistRowId:J
    :goto_3
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5438
    :try_start_6
    const-string v5, "artist_id"

    move-wide/from16 v0, v36

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5442
    .end local v15           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36           #artistRowId:J
    .end local v60           #temp:Ljava/lang/Long;
    :cond_f
    const-string v5, "album"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 5443
    .local v59, so:Ljava/lang/String;
    const-string v5, "album"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5444
    if-eqz v59, :cond_11

    .line 5447
    const-string v5, "_data"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 5449
    .local v23, path:Ljava/lang/String;
    const/16 v24, 0x0

    .line 5450
    .local v24, albumHash:I
    if-eqz v35, :cond_15

    .line 5451
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->hashCode()I

    move-result v24

    .line 5493
    :cond_10
    :goto_4
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    .line 5495
    .local v21, s:Ljava/lang/String;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v26, v0

    .line 5496
    .local v26, albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5497
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 5498
    .local v22, cacheName:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Long;

    .line 5499
    .restart local v60       #temp:Ljava/lang/Long;
    if-nez v60, :cond_1a

    .line 5500
    const-string v18, "albums"

    const-string v19, "album_key"

    const-string v20, "album"

    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-object/from16 v25, v10

    move-object/from16 v27, p1

    invoke-direct/range {v16 .. v27}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v33

    .line 5505
    .local v33, albumRowId:J
    :goto_5
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 5506
    :try_start_8
    const-string v5, "album_id"

    move-wide/from16 v0, v33

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5510
    .end local v21           #s:Ljava/lang/String;
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v24           #albumHash:I
    .end local v26           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v33           #albumRowId:J
    .end local v60           #temp:Ljava/lang/Long;
    :cond_11
    const-string v5, "title_key"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5512
    const-string v5, "title"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 5513
    if-eqz v59, :cond_12

    .line 5514
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    .line 5515
    .restart local v21       #s:Ljava/lang/String;
    const-string v5, "title_key"

    invoke-static/range {v21 .. v21}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5518
    const-string v5, "title"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5519
    const-string v5, "title"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5526
    .end local v21           #s:Ljava/lang/String;
    :cond_12
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v61

    invoke-static {v0, v5}, Lcom/android/providers/media/MediaProvider;->IsNeedAliveConstrain(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    .line 5528
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/providers/media/MediaProvider;->AppnedAliveConstrain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5534
    :cond_13
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 5537
    if-eqz v45, :cond_d

    .line 5538
    const/4 v5, 0x1

    move/from16 v0, v41

    if-ne v0, v5, :cond_1b

    const/16 v5, 0x65

    move/from16 v0, v47

    if-ne v0, v5, :cond_1b

    .line 5539
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 5540
    .local v54, rowId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .line 5435
    .end local v54           #rowId:J
    .end local v59           #so:Ljava/lang/String;
    .restart local v15       #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v60       #temp:Ljava/lang/Long;
    :cond_14
    :try_start_9
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .restart local v36       #artistRowId:J
    goto/16 :goto_3

    .line 5437
    .end local v36           #artistRowId:J
    .end local v60           #temp:Ljava/lang/Long;
    :catchall_2
    move-exception v5

    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v5

    .line 5452
    .end local v15           #artistCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v23       #path:Ljava/lang/String;
    .restart local v24       #albumHash:I
    .restart local v59       #so:Ljava/lang/String;
    :cond_15
    if-eqz v40, :cond_16

    const-string v5, "1"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 5463
    :cond_16
    if-nez v23, :cond_17

    .line 5464
    const/16 v5, 0x64

    move/from16 v0, v47

    if-ne v0, v5, :cond_18

    .line 5465
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Possible multi row album name update without path could give wrong album key"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    :cond_17
    :goto_6
    if-eqz v23, :cond_10

    .line 5488
    const/4 v5, 0x0

    const/16 v6, 0x2f

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v24

    goto/16 :goto_4

    .line 5469
    :cond_18
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v18, v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-virtual/range {v16 .. v21}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v39

    .line 5472
    .local v39, c:Landroid/database/Cursor;
    if-eqz v39, :cond_17

    .line 5474
    :try_start_b
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v52

    .line 5475
    .local v52, numrows:I
    const/4 v5, 0x1

    move/from16 v0, v52

    if-ne v0, v5, :cond_19

    .line 5476
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5477
    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v23

    .line 5482
    :cond_19
    :try_start_c
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .end local v52           #numrows:I
    :catchall_3
    move-exception v5

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 5503
    .end local v39           #c:Landroid/database/Cursor;
    .restart local v21       #s:Ljava/lang/String;
    .restart local v22       #cacheName:Ljava/lang/String;
    .restart local v26       #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v60       #temp:Ljava/lang/Long;
    :cond_1a
    :try_start_d
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    .restart local v33       #albumRowId:J
    goto/16 :goto_5

    .line 5505
    .end local v22           #cacheName:Ljava/lang/String;
    .end local v33           #albumRowId:J
    .end local v60           #temp:Ljava/lang/Long;
    :catchall_4
    move-exception v5

    monitor-exit v26
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v5

    .line 5543
    .end local v21           #s:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v24           #albumHash:I
    .end local v26           #albumCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1b
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring genre in update: count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " match = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5554
    .end local v10           #artist:Ljava/lang/String;
    .end local v35           #albumartist:Ljava/lang/String;
    .end local v40           #compilation:Ljava/lang/String;
    .end local v59           #so:Ljava/lang/String;
    .end local v61           #values:Landroid/content/ContentValues;
    :sswitch_2
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->HtcInkSupported:Z

    if-eqz v5, :cond_d

    .line 5558
    new-instance v61, Landroid/content/ContentValues;

    move-object/from16 v0, v61

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5561
    .restart local v61       #values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v61

    invoke-static {v5, v4, v0}, Lcom/android/providers/media/MediaProvider;->updateImageInkInfobyInkTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto/16 :goto_2

    .line 5572
    .end local v61           #values:Landroid/content/ContentValues;
    :sswitch_3
    new-instance v61, Landroid/content/ContentValues;

    move-object/from16 v0, v61

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5576
    .restart local v61       #values:Landroid/content/ContentValues;
    const-string v5, "bucket_id"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5577
    const-string v5, "bucket_display_name"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5579
    const-string v5, "_data"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 5580
    .local v43, data:Ljava/lang/String;
    if-eqz v43, :cond_1c

    .line 5581
    move-object/from16 v0, v43

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 5583
    :cond_1c
    invoke-static/range {v61 .. v61}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 5586
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v61

    invoke-static {v0, v5}, Lcom/android/providers/media/MediaProvider;->IsNeedAliveConstrain(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    .line 5588
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/providers/media/MediaProvider;->AppnedAliveConstrain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5594
    :cond_1d
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v41

    .line 5597
    goto/16 :goto_2

    .line 5600
    .end local v43           #data:Ljava/lang/String;
    .end local v61           #values:Landroid/content/ContentValues;
    :sswitch_4
    const-string v5, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 5601
    .local v50, moveit:Ljava/lang/String;
    if-eqz v50, :cond_c

    .line 5602
    const-string v46, "play_order"

    .line 5603
    .local v46, key:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 5604
    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 5605
    .local v32, newpos:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v58

    .line 5606
    .local v58, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x3

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 5607
    .local v29, playlist:J
    const/4 v5, 0x5

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .local v31, oldpos:I
    move-object/from16 v27, p0

    move-object/from16 v28, v4

    .line 5608
    invoke-direct/range {v27 .. v32}, Lcom/android/providers/media/MediaProvider;->movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v5

    monitor-exit v62

    goto/16 :goto_1

    .line 5610
    .end local v29           #playlist:J
    .end local v31           #oldpos:I
    .end local v32           #newpos:I
    .end local v58           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to specify "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when using \'move\' parameter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 5410
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x71 -> :sswitch_4
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_3
        0x320 -> :sswitch_0
        0x2711 -> :sswitch_2
    .end sparse-switch
.end method

.method private isPrivacyMode(I)Z
    .locals 3
    .parameter "table"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xca

    if-eq p1, v2, :cond_0

    const/16 v2, 0xcb

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/provider/ExtraSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, emptyCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v0           #emptyCursor:Landroid/database/Cursor;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
